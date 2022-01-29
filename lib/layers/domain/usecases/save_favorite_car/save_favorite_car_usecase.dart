import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SaveFavoriteCarUseCase {
  Future<Either<Exception, bool>> call(CarEntity carEntity);
}