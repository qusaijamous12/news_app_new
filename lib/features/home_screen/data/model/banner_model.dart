
import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel {
  final String imageUrl;
  final String name;
  final int id;
  final String creatAt;

  BannerModel({
    required this.imageUrl,
    required this.name,
    required this.id,
    required this.creatAt,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
