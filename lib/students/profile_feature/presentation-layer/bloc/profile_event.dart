part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}

class LoadProfileEvent extends ProfileEvent {}

class SaveProfileEvent extends ProfileEvent {
  final String name;
  final String address;
  final String? imagePath;

  SaveProfileEvent({required this.name, required this.address, this.imagePath});
}
