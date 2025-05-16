// import 'package:flutter/material.dart';

// class SideBar extends StatelessWidget {
//   const SideBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 250,
//       color: Colors.white,
//       child: Column(
//         children: [
//           const SizedBox(height: 40),
//           Image.asset(
//             'assets/asadstacks.webp',
//             width: 100,
//             height: 100,
//             fit: BoxFit.cover,
//           ),
//           const SizedBox(height: 20),
//           const CircleAvatar(
//             radius: 40,
//             backgroundImage: AssetImage('assets/avatar.png'),
//           ),
//           const SizedBox(height: 8),
//           const Text(
//             'Pooja Mishra',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           const Text('Admin'),
//           const Divider(),
//           _NavItem(icon: Icons.home, label: 'Home'),
//           _NavItem(icon: Icons.people, label: 'Employees'),
//           _NavItem(icon: Icons.event_available, label: 'Attendance'),
//           _NavItem(icon: Icons.insert_chart, label: 'Summary'),
//           _NavItem(icon: Icons.info, label: 'Information'),
//           const SizedBox(height: 20),
//           ExpansionTile(
//             title: const Text('Workspaces'),
//             children: const [Text('Adstacks'), Text('Finance')],
//           ),
//           const Spacer(),
//           _NavItem(icon: Icons.settings, label: 'Setting'),
//           _NavItem(icon: Icons.logout, label: 'Logout'),
//         ],
//       ),
//     );
//   }
// }

// class _NavItem extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   const _NavItem({required this.icon, required this.label, Key? key})
//     : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(leading: Icon(icon), title: Text(label), onTap: () {});
//   }
// }

import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset('assets/asadstacks.webp', width: 100, height: 100),
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            const SizedBox(height: 8),
            const Text(
              'Pooja Mishra',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('Admin'),
            const Divider(),
            _NavItem(icon: Icons.home, label: 'Home'),
            _NavItem(icon: Icons.people, label: 'Employees'),
            _NavItem(icon: Icons.event_available, label: 'Attendance'),
            _NavItem(icon: Icons.insert_chart, label: 'Summary'),
            _NavItem(icon: Icons.info, label: 'Information'),
            const SizedBox(height: 20),
            ExpansionTile(
              title: const Text('Workspaces'),
              children: const [Text('Adstacks'), Text('Finance')],
            ),
            const SizedBox(height: 40), // acts like a spacer at the bottom
            _NavItem(icon: Icons.settings, label: 'Setting'),
            _NavItem(icon: Icons.logout, label: 'Logout'),
          ],
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const _NavItem({required this.icon, required this.label, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: Icon(icon), title: Text(label), onTap: () {});
  }
}
