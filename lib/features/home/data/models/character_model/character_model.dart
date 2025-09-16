import 'package:equatable/equatable.dart';

class CharacterModel extends Equatable {
  final int? id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String title;
  final String family;
  final String image;
  final String imageUrl;

  const CharacterModel({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.title,
    required this.family,
    required this.image,
    required this.imageUrl,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json['id'] as int?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      fullName: json['fullName'] as String,
      title: json['title'] as String,
      family: json['family'] as String,
      image: json['image'] as String,
      imageUrl: json['imageUrl'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'firstName': firstName,
    'lastName': lastName,
    'fullName': fullName,
    'title': title,
    'family': family,
    'image': image,
    'imageUrl': imageUrl,
  };

  @override
  List<Object?> get props {
    return [id, firstName, lastName, fullName, title, family, image, imageUrl];
  }
}
