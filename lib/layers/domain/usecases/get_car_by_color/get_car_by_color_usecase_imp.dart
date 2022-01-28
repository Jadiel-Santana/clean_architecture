import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class GetCarByColorUseCase {
  CarEntity call(String color);
}