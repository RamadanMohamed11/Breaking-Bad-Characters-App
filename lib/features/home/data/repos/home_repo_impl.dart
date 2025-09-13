import 'package:breaking_bad_chars/core/errors/failures.dart';
import 'package:breaking_bad_chars/core/utils/api_service.dart';
import 'package:breaking_bad_chars/features/home/data/models/character_model/character_model.dart';
import 'package:breaking_bad_chars/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<CharacterModel>>> getAllCharacters() async {
    return right([]);
  }

  @override
  Future<Either<Failure, CharacterModel>> getMultipleCharacters({
    required String ids,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CharacterModel>> getSingleCharacter({
    required int id,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, CharacterModel>> getSpecificCharacter({
    required String name,
  }) async {
    throw UnimplementedError();
  }
}
