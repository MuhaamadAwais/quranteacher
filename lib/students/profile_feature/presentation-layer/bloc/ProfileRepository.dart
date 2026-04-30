import 'package:shared_preferences/shared_preferences.dart';

class ProfileRepository {
  Future<void> saveProfileData({
    required String name,
    required String address,
    String? imagePath,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('address', address);

    if (imagePath != null) {
      await prefs.setString('imagepath', imagePath);
    }
  }

  Future<Map<String, String>> getProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'name': prefs.getString('name') ?? '',
      'address': prefs.getString('address') ?? '',
      'imagepath': prefs.getString('imagepath') ?? '',
    };
  }
}
