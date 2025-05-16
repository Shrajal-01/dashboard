import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../state/dashboard_controller.dart';

class CreatorsCard extends StatelessWidget {
  const CreatorsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<DashboardController>();
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Creators',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...ctrl.creators.map(
            (c) => _CreatorItem(name: c.name, artworks: c.artworks),
          ),
        ],
      ),
    );
  }
}

class _CreatorItem extends StatelessWidget {
  final String name;
  final int artworks;
  const _CreatorItem({required this.name, required this.artworks, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(child: Text(name[1])),
      title: Text(name, style: const TextStyle(color: Colors.white)),
      subtitle: Text(
        '$artworks artworks',
        style: const TextStyle(color: Colors.white70),
      ),
      trailing: const Icon(Icons.star, color: Colors.yellow),
    );
  }
}
