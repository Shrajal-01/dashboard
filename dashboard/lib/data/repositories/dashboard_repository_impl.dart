import '../../domain/entities/project.dart';
import '../../domain/entities/creator.dart';
import '../../domain/entities/event.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_data_source.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource remote;
  DashboardRepositoryImpl(this.remote);

  @override
  Future<List<Project>> fetchProjects() => remote.getProjects();

  @override
  Future<List<Creator>> fetchCreators() => remote.getCreators();

  @override
  Future<List<Event>> fetchEvents() => remote.getEvents();
}
