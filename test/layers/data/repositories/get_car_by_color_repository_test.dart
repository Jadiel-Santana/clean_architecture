import 'package:clean_architecture/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_car_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarByColorDataSource dataSource = GetCarByColorLocalDataSourceImp();
  GetCarByColorRepository repository = GetCarByColorRepositoryImp(dataSource);

  test('Devolva um carro independente da cor', () {
    var result = repository('Qualquer');
    expect(result, isNotNull);
  });
}