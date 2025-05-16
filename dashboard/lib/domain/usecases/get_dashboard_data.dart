import '../entities/project.dart';
import '../entities/creator.dart';
import '../entities/event.dart';
import '../repositories/dashboard_repository.dart';

class DashboardData {
  final List<Project> projects;
  final List<Creator> creators;
  final List<Event> events;
  DashboardData({
    required this.projects,
    required this.creators,
    required this.events,
  });
}

class GetDashboardData {
  final DashboardRepository repository;
  GetDashboardData(this.repository);

  Future<DashboardData> execute() async {
    final projects = await repository.fetchProjects();
    final creators = await repository.fetchCreators();

    final events = [
      Event(title: 'Alice', emoji: '👩‍🦰', icons: []),
      Event(title: 'Bob', emoji: '🎩', icons: []),
    ];
    return DashboardData(
      projects: projects,
      creators: creators,
      events: events,
    );
  }
}
