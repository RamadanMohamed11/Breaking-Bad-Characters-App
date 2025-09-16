part of 'all_characters_cubit.dart';

sealed class AllCharactersState extends Equatable {
  const AllCharactersState();

  @override
  List<Object> get props => [];
}

final class AllCharactersInitial extends AllCharactersState {}

final class AllCharactersLoading extends AllCharactersState {}

final class AllCharactersSuccess extends AllCharactersState {
  final List<CharacterModel> characters;

  const AllCharactersSuccess(this.characters);

  @override
  List<Object> get props => [characters];
}

final class AllCharactersFailure extends AllCharactersState {
  final String errorMessage;

  const AllCharactersFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
