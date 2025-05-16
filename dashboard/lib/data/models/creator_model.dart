import '../../domain/entities/creator.dart';

class CreatorModel extends Creator {
  CreatorModel({required String name, required int artworks})
    : super(name: name, artworks: artworks);

  factory CreatorModel.fromJson(Map<String, dynamic> json) =>
      CreatorModel(name: json['name'], artworks: json['artworks']);
}
