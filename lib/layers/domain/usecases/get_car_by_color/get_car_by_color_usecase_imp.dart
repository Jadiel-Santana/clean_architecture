import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';

class GetCarByColorUseCaseImp implements GetCarByColorUseCase {
  final GetCarByColorRepository _getCarByColorRepository;

  GetCarByColorUseCaseImp(this._getCarByColorRepository);

  @override
  CarEntity call(String color) {
    return _getCarByColorRepository(color);
  }
}