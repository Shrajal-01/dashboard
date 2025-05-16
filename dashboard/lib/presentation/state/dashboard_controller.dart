import 'package:get/get.dart';
import '../../domain/usecases/get_dashboard_data.dart';
import '../../domain/entities/project.dart';
import '../../domain/entities/creator.dart';
import '../../domain/entities/event.dart';

class DashboardController extends GetxController {
  final GetDashboardData getDashboardData;

  DashboardController(this.getDashboardData);

  var projects = <Project>[].obs;
  var creators = <Creator>[].obs;
  var events = <Event>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    isLoading(true);
    final data = await getDashboardData.execute();
    projects.assignAll(data.projects);
    creators.assignAll(data.creators);
    events.assignAll(data.events);
    isLoading(false);
  }
}
