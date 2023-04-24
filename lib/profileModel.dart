import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    required this.name,
    required this.image,
    required this.desc,
  });

  String name;
  String image;
  String desc;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json["name"],
        image: json["image"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "desc": desc,
      };
}
