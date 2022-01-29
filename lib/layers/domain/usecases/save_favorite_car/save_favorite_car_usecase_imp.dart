import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:dartz/dartz.dart';

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUseCaseImp(this._saveFavoriteCarRepository);

  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    carEntity.setLogic();
    return await _saveFavoriteCarRepository(carEntity);
  }
}