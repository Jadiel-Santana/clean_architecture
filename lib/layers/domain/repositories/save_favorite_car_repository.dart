import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarRepository {
  Future<bool> call(CarEntity carEntity);
}