class VehicleModel {
  String mark;
  String model;
  double zeroTo100;
  String energyClass;
  int power;
  int topSpeed;
  String pic;
  String location;
  double price;

  VehicleModel({
    required this.mark,
    required this.model,
    required this.zeroTo100,
    required this.energyClass,
    required this.power,
    required this.topSpeed,
    required this.pic,
    required this.location,
    required this.price,
  });

  factory VehicleModel.fromJson(Map<String, dynamic> json) {
    return VehicleModel(
      mark: json['mark'],
      model: json['model'],
      zeroTo100: json['zeroto100'],
      energyClass: json['energyClass'],
      power: json['power'],
      topSpeed: json['topspeed'],
      pic: json['pic'],
      location: json['location'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mark': mark,
      'model': model,
      'zeroto100': zeroTo100,
      'energyClass': energyClass,
      'power': power,
      'topspeed': topSpeed,
      'pic': pic,
      'location': location,
      'price': price,
    };
  }
}
