import 'package:clean_architecture/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture/layers/data/dtos/car_dto.dart';
import 'package:dartz/dartz.dart';

class GetCarByColorLocalDataSourceImp implements GetCarByColorDataSource {
  final jsonRed = {
    'placa': 'ABC-1234',
    'quantidadeDePortas': 4,
    'valorFinal': 5000.00,
  };

  final jsonAny = {
    'placa': 'FED-6789',
    'quantidadeDePortas': 2,
    'valorFinal': 2000.00,
  };

  @override
  Either<Exception, CarDto> call(String color) {
    try {
      if (color.compareTo('Vermelho') == 0) {
        return Right(CarDto.fromMap(jsonRed));
      }
      return Right(CarDto.fromMap(jsonAny));
    } catch(e) {
      return Left(Exception('Error in datasource'));
    }
  }
}