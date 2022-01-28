import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarUseCase {
  bool call(CarEntity carEntity);
}