// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VehicleModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) => VehicleModel(
      mark: json['mark'] as String,
      model: json['model'] as String,
      zeroTo100: (json['zeroto100'] as num).toDouble(),
      energyClass: json['energyClass'] as String,
      power: json['power'] as int,
      topSpeed: json['topspeed'] as int,
      pic: json['pic'] as String,
      location: json['location'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$VehicleModelToJson(VehicleModel instance) =>
    <String, dynamic>{
      'mark': instance.mark,
      'model': instance.model,
      'zeroto100': instance.zeroTo100,
      'energyClass': instance.energyClass,
      'power': instance.power,
      'topspeed': instance.topSpeed,
      'pic': instance.pic,
      'location': instance.location,
      'price': instance.price,
    };
