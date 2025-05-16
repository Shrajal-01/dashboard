import '../../domain/entities/project.dart';

class ProjectModel extends Project {
  ProjectModel({required String title, required String subtitle})
    : super(title: title, subtitle: subtitle);

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      ProjectModel(title: json['title'], subtitle: json['subtitle']);
}
