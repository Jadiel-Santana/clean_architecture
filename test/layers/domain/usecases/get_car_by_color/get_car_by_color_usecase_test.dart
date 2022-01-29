import 'package:clean_architecture/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase_imp.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma instância de Carro quando passado qualquer cor', () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()),
    );

    var result = useCase('Azul');
    expect(result.fold(id, (r) => r), isInstanceOf<CarEntity>());
  });

  test('Deve retornar um Carro de 4 portas quando vermelho', () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()),
    );

    var result = useCase('Vermelho');
    expect(result.fold(id, (r) => r.quantityDoors), 4);
  });

  test(
      'Deve retornar um Carro de 2 portas quando qualquer cor, exceto vermelho',
      () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(GetCarByColorLocalDataSourceImp()),
    );

    var result = useCase('Verde');
    expect(result.fold(id, (r) => r.quantityDoors), 2);
  });
}
