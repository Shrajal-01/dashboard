import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../state/dashboard_controller.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<DashboardController>();
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.indigo[900],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'All Projects',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...ctrl.projects.map(
            (proj) => _ProjectItem(title: proj.title, subtitle: proj.subtitle),
          ),
        ],
      ),
    );
  }
}

class _ProjectItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const _ProjectItem({required this.title, required this.subtitle, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title, style: const TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.white70)),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.edit, color: Colors.white),
      ),
    );
  }
}
