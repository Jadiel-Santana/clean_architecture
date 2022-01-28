import 'package:clean_architecture/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarByColorRepository repository = GetCarByColorRepositoryImp();

  test('Devolva um carro independente da cor', () {
    var result = repository('Qualquer');
    expect(result, isNotNull);
  });
}