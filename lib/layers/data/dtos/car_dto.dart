import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  String plate;
  int quantityDoors;
  double valueFinal;

  CarDto({
    required this.plate,
    required this.quantityDoors,
    required this.valueFinal,
  }) : super(
          plate: plate,
          quantityDoors: quantityDoors,
          value: valueFinal,
        );

  Map toMap() {
    return {
      'placa': plate,
      'quantidadeDePortas': quantityDoors,
      'valorFinal': valueFinal,
    };
  }

  static CarDto fromMap(Map map) {
    return CarDto(
      plate: map['placa'],
      quantityDoors: map['quantidadeDePortas'],
      valueFinal: map['valorFinal'],
    );
  }
}
