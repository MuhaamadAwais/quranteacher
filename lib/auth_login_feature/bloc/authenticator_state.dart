part of 'authenticator_bloc.dart';

@immutable
sealed class AuthenticatorState {}

@immutable
final class AuthenticatorInitial extends AuthenticatorState {}

@immutable
final class AuthenticatorLoading extends AuthenticatorState {
  String? message;
  AuthenticatorLoading({this.message});
}

@immutable
final class AuthenticatorSuccess extends AuthenticatorState {
  String? provider;
  AuthenticatorSuccess({this.provider});
}

@immutable
final class AuthenticatorError extends AuthenticatorState {
  final String message;
  AuthenticatorError({required this.message});
  @override
  List<Object?> get props => [message];
}
