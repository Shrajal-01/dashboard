import '../entities/project.dart';
import '../entities/creator.dart';
import '../entities/event.dart';

abstract class DashboardRepository {
  Future<List<Project>> fetchProjects();
  Future<List<Creator>> fetchCreators();
  Future<List<Event>> fetchEvents();
}
