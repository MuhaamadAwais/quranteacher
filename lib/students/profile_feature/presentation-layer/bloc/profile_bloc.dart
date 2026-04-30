import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/bloc/ProfileRepository.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/bloc/profile_state.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/profilemodel/profilemodel.dart';

part 'profile_event.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository repository;

  ProfileBloc(this.repository) : super(ProfileInitial()) {
    on<LoadProfileEvent>(_onLoadProfile);
    on<SaveProfileEvent>(_onSaveProfile);
  }

  Future<void> _onLoadProfile(
    LoadProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading());
    final data = await repository.getProfileData();

    final profile = Profilemodel(
      name: data['name'] ?? '',
      address: data['address'] ?? '',
      imagepath: data['imagepath'] ?? '',
    );

    emit(ProfileLoaded(profile));
  }

  Future<void> _onSaveProfile(
    SaveProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading());

    await repository.saveProfileData(
      name: event.name,
      address: event.address,
      imagePath: event.imagePath,
    );

    final updated = Profilemodel(
      name: event.name,
      address: event.address,
      imagepath: event.imagePath ?? '',
    );

    emit(ProfileLoaded(updated));
  }
}
