part of 'authenticator_bloc.dart';

@immutable
sealed class AuthenticatorEvent {}

@immutable
class LoginEvent extends AuthenticatorEvent {
  final String email;
  final String password;
  final String role;
  LoginEvent(this.email, this.password, this.role);
  @override
  List<Object?> get props => [email, password, role];
}

@immutable
class RegisterEvent extends AuthenticatorEvent {
  final String name;
  final String email;
  final String password;
  final String role;
  RegisterEvent(this.name, this.email, this.password, this.role);
  @override
  List<Object?> get props => [email, password, role];
}

@immutable
class LogoutEvent extends AuthenticatorEvent {}

@immutable
class ForgetPasswordEvent extends AuthenticatorEvent {}

@immutable
class GoogleLoginEvent extends AuthenticatorEvent {
  final String role;
  GoogleLoginEvent(this.role);
  @override
  List<Object?> get props => [role];
}

// student and teacher from detail form event from here
@immutable
class StudentDetailEvent extends AuthenticatorEvent {
  final String uid;
  final String email;
  final String fullName;
  final String age;
  final String learningChoice;
  final String studylevel;
  final String contectNumber;
  final String availabilityClass;

  StudentDetailEvent({
    required this.uid,
    required this.email,
    required this.fullName,
    required this.age,
    required this.learningChoice,
    required this.studylevel,
    required this.contectNumber,
    required this.availabilityClass,
  });

  @override
  List<Object?> get props => [
    uid,
    email,
    fullName,
    age,
    learningChoice,
    studylevel,
    contectNumber,
    availabilityClass,
  ];
}

// teacher detail form event from here
@immutable
class TeacherDetailEvent extends AuthenticatorEvent {
  final String uid;
  final String email;
  final String name;
  final String qualificationi;
  final String experiance;
  final String availabletime;
  final String madhab;

  TeacherDetailEvent({
    required this.uid,
    required this.email,
    required this.name,
    required this.qualificationi,
    required this.experiance,
    required this.availabletime,
    required this.madhab,
  });

  @override
  List<Object?> get props => [
    uid,
    email,
    name,
    qualificationi,
    experiance,
    availabletime,
    madhab,
  ];
}
