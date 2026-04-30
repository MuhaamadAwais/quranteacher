import 'package:meta/meta.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/profilemodel/profilemodel.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {
  final Profilemodel profile;

  ProfileLoaded(this.profile);

  ProfileLoaded copyWith({Profilemodel? profile}) {
    return ProfileLoaded(profile ?? this.profile);
  }
}

final class ProfileError extends ProfileState {
  final String message;
  ProfileError(this.message);
}
