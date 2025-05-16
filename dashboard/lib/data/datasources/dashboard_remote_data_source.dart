import '../models/project_model.dart';
import '../models/creator_model.dart';
import '../models/event_model.dart';

abstract class DashboardRemoteDataSource {
  Future<List<ProjectModel>> getProjects();
  Future<List<CreatorModel>> getCreators();
  Future<List<EventModel>> getEvents();
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  @override
  Future<List<ProjectModel>> getProjects() async {
    // TODO: Replace with real API call
    return [
      ProjectModel(title: 'Tech behind Blockchain', subtitle: 'Project #1'),
    ];
  }

  @override
  Future<List<CreatorModel>> getCreators() async {
    return [
      CreatorModel(name: '@madison_c21', artworks: 9821),
      CreatorModel(name: '@karl.will02', artworks: 7032),
    ];
  }

  @override
  Future<List<EventModel>> getEvents() async {
    return [
      EventModel(title: "Today's Birthday", icons: ['😊', '🎉'], emoji: ''),
      EventModel(title: 'Anniversary', icons: ['❤️', '🎂'], emoji: ''),
    ];
  }
}
