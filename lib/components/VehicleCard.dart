import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final dynamic vehicle;
  const VehicleCard({super.key, this.vehicle});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(vehicle.mark),
        subtitle: Text(vehicle.model),
        leading: Image.network(vehicle.pic),
        trailing: Text('${vehicle.price}€'),
      ),
    );
  }
}
