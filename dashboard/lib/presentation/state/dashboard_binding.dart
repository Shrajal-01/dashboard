import 'package:get/get.dart';
import '../../data/datasources/dashboard_remote_data_source.dart';
import '../../data/repositories/dashboard_repository_impl.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../../domain/usecases/get_dashboard_data.dart';
import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardRemoteDataSource>(
      () => DashboardRemoteDataSourceImpl(),
    );
    Get.lazyPut<DashboardRepository>(() => DashboardRepositoryImpl(Get.find()));
    Get.lazyPut(() => GetDashboardData(Get.find()));
    Get.lazyPut(() => DashboardController(Get.find()));
  }
}
