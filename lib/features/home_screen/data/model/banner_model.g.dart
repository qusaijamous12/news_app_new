// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
  imageUrl: json['imageUrl'] as String,
  name: json['name'] as String,
  id: (json['id'] as num).toInt(),
  creatAt: json['creatAt'] as String,
);

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'id': instance.id,
      'creatAt': instance.creatAt,
    };
