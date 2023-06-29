import 'package:flutter/material.dart';
import 'package:oto_rent/components/VehicleCard.dart';
import 'package:oto_rent/models/VehicleModel.dart';
import 'package:oto_rent/services/vehicle_services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  late List<VehicleModel> vehicles = [];
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    fetchVehicles;
  }

  Future<void> refreshVehicles() async {
    await fetchVehicles;
  }

  get fetchVehicles {
    VehicleServices.getVehicles().then((data) {
      setState(() {
        vehicles = data;
      });
    }).catchError((error) {
      final snackBar = SnackBar(content: Text(error));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            const Text('Liste des véhicules disponibles'),
            const SizedBox(height: 10),
            Expanded(child: vehiclesListView),
          ],
        ),
      ),
    );
  }

  Widget get vehiclesListView {
    return RefreshIndicator(
      onRefresh: () async {
        await refreshVehicles();
      },
      key: _refreshIndicatorKey,
      color: Colors.white,
      backgroundColor: Colors.deepPurpleAccent,
      strokeWidth: 4.0,
      displacement: 20,
      child: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          VehicleModel vehicle = vehicles[index];
          return VehicleCard(
            vehicle: vehicle,
          );
        },
      ),
    );
  }
}
