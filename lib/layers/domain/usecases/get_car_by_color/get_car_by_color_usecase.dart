import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarByColorUseCase {
  Either<Exception, CarEntity> call(String color);
}