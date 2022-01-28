import 'package:clean_architecture/layers/data/dtos/car_dto.dart';

abstract class GetCarByColorDataSource {
  CarDto call(String color);
}