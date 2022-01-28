import 'package:clean_architecture/layers/data/dtos/car_dto.dart';
import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_car_by_color_repository.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  @override
  CarEntity call(String color) {
    // Chamamos a API e ela respondeu um json;
    var json = {
      'placa': 'ABC-1234',
      'quantidadeDePortas': 2,
      'valorFinal': 1000.00,
    };

    return CarDto.fromMap(json);
  }
}