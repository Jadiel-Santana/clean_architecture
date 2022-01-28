import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade não seja nula', () {
    CarEntity carEntity = CarEntity(
      plate: 'ABC-123',
      quantityDoors: 2,
      value: 1000.00,
    );

    expect(carEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () {
    CarEntity carEntity = CarEntity(
      plate: 'ABC-123',
      quantityDoors: 2,
      value: 1000.00,
    );
    expect(carEntity.quantityDoors, 2);
  });

  test('Espero que o valorReal seja 2000.00', () {
    CarEntity carEntity = CarEntity(
      plate: 'ABC-123',
      quantityDoors: 2,
      value: 1000.00,
    );
    expect(carEntity.valueReal, 2000.00);
  });

  test('Espero que o valorReal seja 0.00', () {
    CarEntity carEntity = CarEntity(
      plate: 'ABC-123',
      quantityDoors: 0,
      value: 1000.00,
    );
    expect(carEntity.valueReal, 0.00);
  });

  test('Espero que o valorReal seja 30000.00', () {
    CarEntity carEntity = CarEntity(
      plate: 'ABC-123',
      quantityDoors: 2,
      value: 15000.00,
    );
    carEntity.setLogic();
    expect(carEntity.value, 30000.00);
  });
}
