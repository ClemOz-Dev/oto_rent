import 'package:json_annotation/json_annotation.dart';

part 'VehicleModel.g.dart';

@JsonSerializable()
class VehicleModel {
  String mark;
  String model;
  @JsonKey(name: 'zeroto100')
  double zeroTo100;
  String energyClass;
  int power;
  @JsonKey(name: 'topspeed')
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

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleModelToJson(this);
}
