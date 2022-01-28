import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  @override
  CarEntity call(String color) {
    if (color.contains('Vermelho')) {
      return CarEntity(
        plate: 'ABC-1234',
        quantityDoors: 4,
        value: 50.000,
      );
    }
    return CarEntity(
      plate: 'QWE-7890',
      quantityDoors: 2,
      value: 20.000,
    );
  }
}

main() {
  test('Deve retornar uma instância de Carro quando passado qualquer cor', () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(),
    );

    var result = useCase('Azul');
    expect(result, isInstanceOf<CarEntity>());
  });

  test('Deve retornar um Carro de 4 portas quando vermelho', () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(),
    );

    var result = useCase('Vermelho');
    expect(result.quantityDoors, 4);
  });

  test(
      'Deve retornar um Carro de 2 portas quando qualquer cor, exceto vermelho',
      () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(),
    );

    var result = useCase('Verde');
    expect(result.quantityDoors, 2);
  });
}
