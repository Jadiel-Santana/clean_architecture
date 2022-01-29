import 'package:clean_architecture/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que salve o carro com sucesso', () async {
    SaveFavoriteCarUseCase useCase = SaveFavoriteCarUseCaseImp(
      SaveFavoriteCarRepositoryImp(),
    );

    var car = CarEntity(
      plate: 'XPT-1234',
      quantityDoors: 2,
      value: 1,
    );

    var result = await useCase(car);
    expect(result.fold(id, (r) => r), true);
  });

  test('Espero que não salve o carro quando o valor for menor ou igual a zero', () async {
    SaveFavoriteCarUseCase useCase = SaveFavoriteCarUseCaseImp(
      SaveFavoriteCarRepositoryImp(),
    );

    var car = CarEntity(
      plate: 'XPT-1234',
      quantityDoors: 2,
      value: 0,
    );

    var result = await useCase(car);
    expect(result.fold(id, (r) => r), false);
  });
}
