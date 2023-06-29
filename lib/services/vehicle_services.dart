import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:oto_rent/models/VehicleModel.dart';

class VehicleServices {
  static Future<List<VehicleModel>> getVehicles() async {
    String filePath = 'lib/data/vehicles.json';

    List<VehicleModel> vehicles = [];
    try {
      String fileContent = await rootBundle.loadString(filePath);
      List<dynamic> jsonData = json.decode(fileContent);

      print(jsonData); // Affiche les données JSON

      vehicles = jsonData.map((data) => VehicleModel.fromJson(data)).toList();
    } catch (e) {
      print(e);
      throw "La récupération des véhicules a échoué. Veuillez réessayer.";
    }

    return vehicles;
  }
}
