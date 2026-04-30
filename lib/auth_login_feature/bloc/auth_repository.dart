import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quranteacher/auth_login_feature/modelclass/studentdetailmodel.dart';
import 'package:quranteacher/auth_login_feature/modelclass/teacherdetailmodel.dart';

class AuthRepository {
  Future<void> registerUser({
    required String name,
    required String email,
    required String password,
    required String role,
  }) async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    await firestore.collection("users").doc(userCredential.user!.uid).set({
      "name": name,
      "email": email,
      "role": role,
    });
  }

  /// Login Repository
  Future<void> loginUser({
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      // Firebase Auth first
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      String uid = userCredential.user!.uid;

      // Firestore check
      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection("users")
          .doc(uid)
          .get();

      if (!userDoc.exists) {
        await FirebaseAuth.instance.signOut();
        throw Exception("User profile not found");
      }

      String savedRole = userDoc["role"];
      if (savedRole != role) {
        await FirebaseAuth.instance.signOut();
        throw Exception("Invalid role selected");
      }
    } on FirebaseAuthException catch (e) {
      throw Exception(_firebaseError(e.code));
    }
  }

  String _firebaseError(String code) {
    switch (code) {
      case 'user-not-found':
        return 'User not registered';
      case 'wrong-password':
        return 'Wrong password';
      case 'invalid-email':
        return 'Invalid email format';
      default:
        return 'Authentication failed';
    }
  }

  // google sign auth function repository

  Future<void> googleLoginUser({required String role}) async {
    try {
      // Multiple accounts → previous logout
      await GoogleSignIn().signOut();

      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? account = await googleSignIn.signIn();

      if (account == null) {
        throw Exception("Google sign in cancelled");
      }

      final GoogleSignInAuthentication auth = await account.authentication;

      if (auth.idToken == null || auth.accessToken == null) {
        throw Exception("Google auth tokens missing");
      }

      final credential = GoogleAuthProvider.credential(
        accessToken: auth.accessToken,
        idToken: auth.idToken,
      );

      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(credential);
      String uid = userCredential.user!.uid;

      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection("users")
          .doc(uid)
          .get();

      if (!userDoc.exists) {
        // New user
        await FirebaseFirestore.instance.collection("users").doc(uid).set({
          "email": userCredential.user!.email ?? "",
          "uid": uid,
          "role": role,
          "provider": "google",
          "createdAt": FieldValue.serverTimestamp(),
        });
      } else {
        // Existing user role check
        String savedRole = userDoc["role"] ?? "";
        if (savedRole != role) {
          await FirebaseAuth.instance.signOut();
          throw Exception("Wrong role selected for this account");
        }
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        throw Exception("Account already linked with different provider");
      }
      throw Exception("Google login failed: ${e.message}");
    }
  }

  // student detail form create repository  function
  Future<void> studentDetailFormCreate(
    Studentdetailmodel studentdetailmodel,
  ) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        throw Exception("User not authenticated");
      }

      await FirebaseFirestore.instance
          .collection("studentdetailform")
          .doc(user.uid)
          .set(studentdetailmodel.toMap());
    } catch (e) {
      throw Exception("Failed to create student detail form: $e");
    }
  }

  // teacher detail form create repository function
  Future<void> teacherDetailFormCreate(Teacherdetailmodel teachermodel) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        throw Exception("User not authenticated");
      }

      await FirebaseFirestore.instance
          .collection("teacherdetailform")
          .doc(user.uid)
          .set(teachermodel.toMap());
    } catch (e) {
      throw Exception("Failed to create teacher detail form: $e");
    }
  }
}
