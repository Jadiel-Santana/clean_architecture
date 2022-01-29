import 'package:clean_architecture/layers/presentation/controllers/car_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarPage extends StatelessWidget {
  final controller = GetIt.I.get<CarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clean Architecture'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.directions_car_rounded),
            ),
            title: Text(
              controller.car.plate,
            ),
            subtitle: Text(
              'R\$ ${controller.car.value}'.replaceAll('.0', ',00'),
            ),
            trailing: Text(
            '${controller.car.quantityDoors}',
          ),
          ),
        ),
      ),
    );
  }
}