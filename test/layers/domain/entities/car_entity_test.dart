class CarEntity {
  String plate;
  int quantityDoors;
  double value;

  CarEntity({
    required this.plate,
    required this.quantityDoors,
    required this.value,
  });

  double get valueReal {
    return value * quantityDoors;
  }

  double setLogic() {
    if(valueReal > 10.000) {
      return value * 2;
    }
    return value;
  }
}