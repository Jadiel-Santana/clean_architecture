import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:dartz/dartz.dart';

class SaveFavoriteCarRepositoryImp implements SaveFavoriteCarRepository {
  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    try {
      return Right(carEntity.value > 0);
    } catch(e) {
      return Left(Exception('Repository Error'));
    }
  }
}