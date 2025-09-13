import 'package:breaking_bad_chars/core/errors/failures.dart';
import 'package:breaking_bad_chars/features/home/data/models/character_model/character_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<CharacterModel>>> getAllCharacters();
  Future<Either<Failure, CharacterModel>> getSingleCharacter({required int id});
  Future<Either<Failure, CharacterModel>> getMultipleCharacters({
    required String ids,
  });
  Future<Either<Failure, CharacterModel>> getSpecificCharacter({
    required String name,
  });
}
