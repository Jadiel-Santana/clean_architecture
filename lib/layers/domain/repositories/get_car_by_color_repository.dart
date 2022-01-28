import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class GetCarByColorRepository {
  CarEntity call(String color);
}