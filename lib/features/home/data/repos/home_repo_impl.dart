import 'package:breaking_bad_chars/core/errors/failures.dart';
import 'package:breaking_bad_chars/core/utils/api_service.dart';
import 'package:breaking_bad_chars/features/home/data/models/character_model/character_model.dart';
import 'package:breaking_bad_chars/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<CharacterModel>>> getAllCharacters() async {
    try {
      List<Map<String, dynamic>> result = await apiService.get(
        endPoint: 'Characters',
      );
      List<CharacterModel> characters = [];
      for (var character in result) {
        characters.add(CharacterModel.fromJson(character));
      }
      return Right(characters);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
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
