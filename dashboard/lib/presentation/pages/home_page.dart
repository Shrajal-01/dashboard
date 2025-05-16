import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/utils/responsive.dart';
import '../widgets/sidebar.dart';
import '../widgets/header.dart';
import '../widgets/banner_card.dart';
import '../widgets/project_card.dart';
import '../widgets/creators_card.dart';
import '../widgets/performance_chart.dart';
import '../widgets/right_panel.dart';
import '../state/dashboard_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final ctrl = Get.find<DashboardController>();
        if (ctrl.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return Row(
          children: [
            if (ScreenHelper.isDesktop(context)) const SideBar(),
            Expanded(
              child: Column(
                children: const [
                  Header(),
                  Expanded(child: _DashboardContent()),
                ],
              ),
            ),
            if (ScreenHelper.isDesktop(context)) const RightPanel(),
          ],
        );
      }),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  const _DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const BannerCard(),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (c, constraints) {
              return Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  const ProjectCard(),
                  const CreatorsCard(),
                  PerformanceChart(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
