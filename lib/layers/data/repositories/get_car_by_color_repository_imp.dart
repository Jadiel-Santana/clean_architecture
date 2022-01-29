import 'package:clean_architecture/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:dartz/dartz.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  final GetCarByColorDataSource _getCarByColorDataSource;

  GetCarByColorRepositoryImp(this._getCarByColorDataSource);

  @override
  Either<Exception, CarEntity> call(String color) {
    return _getCarByColorDataSource(color);
  }
}