import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class CarController {
  final GetCarByColorUseCase _getCarByColorUseCase;
  final SaveFavoriteCarUseCase _saveFavoriteCarUseCase;

  CarController(
    this._getCarByColorUseCase,
    this._saveFavoriteCarUseCase,
  ) {
    getCarByColor('Vermelho');
  }

  late CarEntity car;

  getCarByColor(String color) {
    car = _getCarByColorUseCase(color);
  }

  saveFavoriteCar(CarEntity carEntity) async {
    var result = await _saveFavoriteCarUseCase(carEntity);
  }
}