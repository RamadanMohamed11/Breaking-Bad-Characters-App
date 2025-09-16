import 'package:bloc/bloc.dart';
import 'package:breaking_bad_chars/features/home/data/models/character_model/character_model.dart';
import 'package:breaking_bad_chars/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'all_characters_state.dart';

class AllCharactersCubit extends Cubit<AllCharactersState> {
  HomeRepo homeRepo;
  AllCharactersCubit(this.homeRepo) : super(AllCharactersInitial());

  Future<void> fetchAllCharacters() async {
    emit(AllCharactersLoading());
    try {
      var result = await homeRepo.getAllCharacters();
      result.fold(
        (failure) => emit(AllCharactersFailure(failure.errorMessage)),
        (characters) => emit(AllCharactersSuccess(characters)),
      );
    } catch (e) {
      emit(AllCharactersFailure(e.toString()));
    }
  }
}
