import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranteacher/auth_login_feature/bloc/auth_repository.dart';
import 'package:quranteacher/auth_login_feature/modelclass/studentdetailmodel.dart';
import 'package:quranteacher/auth_login_feature/modelclass/teacherdetailmodel.dart';

part 'authenticator_event.dart';
part 'authenticator_state.dart';

class AuthenticatorBloc extends Bloc<AuthenticatorEvent, AuthenticatorState> {
  final AuthRepository authRepository;
  AuthenticatorBloc(this.authRepository) : super(AuthenticatorInitial()) {
    on<RegisterEvent>(_registerUser);
    on<LoginEvent>(_loginUser);
    on<GoogleLoginEvent>(_googleLoginUser);
    on<StudentDetailEvent>(_studentDetailForm);
    on<TeacherDetailEvent>(_teacherdetailForm);
  }

  // Register authentication function
  Future<void> _registerUser(
    RegisterEvent event,
    Emitter<AuthenticatorState> emit,
  ) async {
    try {
      emit(AuthenticatorLoading(message: 'Registering...'));

      await authRepository.registerUser(
        name: event.name,
        email: event.email,
        password: event.password,
        role: event.role,
      );

      emit(AuthenticatorSuccess());
    } catch (e) {
      emit(AuthenticatorError(message: e.toString()));
    }
  }

  // user login authentication function
  Future<void> _loginUser(
    LoginEvent event,
    Emitter<AuthenticatorState> emit,
  ) async {
    try {
      emit(AuthenticatorLoading(message: 'Login...'));

      await authRepository.loginUser(
        email: event.email,
        password: event.password,
        role: event.role,
      );

      emit(AuthenticatorSuccess());
    } catch (e) {
      emit(AuthenticatorError(message: e.toString()));
    }
  }

  // google sign in function
  Future<void> _googleLoginUser(
    GoogleLoginEvent event,
    Emitter<AuthenticatorState> emit,
  ) async {
    try {
      emit(AuthenticatorLoading(message: 'Google login...'));

      await authRepository.googleLoginUser(role: event.role);

      emit(AuthenticatorSuccess(provider: 'google')); // Navigation ready
    } catch (e) {
      emit(AuthenticatorError(message: e.toString()));
    }
  }

  // user login authentication function
  Future<void> _studentDetailForm(
    StudentDetailEvent event,
    Emitter<AuthenticatorState> emit,
  ) async {
    Studentdetailmodel studentdetailmodel = Studentdetailmodel(
      uid: event.uid,
      email: event.email,
      fullName: event.fullName,
      age: event.age,
      learningChoice: event.learningChoice,
      studylevel: event.studylevel,
      contectNumber: event.contectNumber,
      availabilityClass: event.availabilityClass,
    );
    try {
      emit(AuthenticatorLoading(message: 'saving...'));
      await authRepository.studentDetailFormCreate(studentdetailmodel);

      emit(AuthenticatorSuccess());
    } catch (e) {
      emit(AuthenticatorError(message: e.toString()));
    }
  }

  // user login authentication function
  Future<void> _teacherdetailForm(
    TeacherDetailEvent event,
    Emitter<AuthenticatorState> emit,
  ) async {
    Teacherdetailmodel teacherdetailmodel = Teacherdetailmodel(
      uid: event.uid,
      email: event.email,
      name: event.name,
      availabletime: event.availabletime,
      experiance: event.experiance,
      madhab: event.madhab,
      qualificationi: event.qualificationi,
    );
    try {
      emit(AuthenticatorLoading(message: 'saving...'));
      await authRepository.teacherDetailFormCreate(teacherdetailmodel);
      emit(AuthenticatorSuccess());
    } catch (e) {
      emit(AuthenticatorError(message: e.toString()));
    }
  }
}
