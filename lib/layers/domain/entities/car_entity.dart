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

  void setLogic() {
    if(valueReal > 10000.00) {
      value *= 2;
    }
  }
}