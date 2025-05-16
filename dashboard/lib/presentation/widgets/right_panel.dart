// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:table_calendar/table_calendar.dart';
// import '../state/dashboard_controller.dart';

// class RightPanel extends StatelessWidget {
//   const RightPanel({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final ctrl = Get.find<DashboardController>();
//     return Container(
//       width: 300,
//       color: Colors.grey[900],
//       padding: const EdgeInsets.all(16),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             TableCalendar(
//               firstDay: DateTime.utc(2020, 1, 1),
//               lastDay: DateTime.utc(2030, 12, 31),
//               focusedDay: DateTime.now(),
//               headerStyle: const HeaderStyle(
//                 formatButtonVisible: false,
//                 titleCentered: true,
//                 titleTextStyle: TextStyle(color: Colors.white),
//               ),
//               calendarStyle: const CalendarStyle(
//                 todayDecoration: BoxDecoration(color: Colors.purple),
//                 defaultTextStyle: TextStyle(color: Colors.white),
//               ),
//             ),
//             const SizedBox(height: 24),
//             BirthdayCard(total: ctrl.events.length,
//             emoji: '🎉',
//             avatars: ctrl.events.map((e) => e.emoji).toList(),),
//             SizedBox(height: 20),
//             AnniversaryCard(total: ctrl.events.length),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import '../state/dashboard_controller.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<DashboardController>();

    return Obx(() {
      final eventList = ctrl.events;

      return Container(
        width: 300,
        color: Colors.grey[900],
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: DateTime.now(),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(color: Colors.white),
                ),
                calendarStyle: const CalendarStyle(
                  todayDecoration: BoxDecoration(color: Colors.purple),
                  defaultTextStyle: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 24),
              if (eventList.isNotEmpty)
                BirthdayCard(
                  total: eventList.length,
                  emoji: '🎉',
                  avatars: eventList.map((e) => e.emoji).toList(),
                ),
              SizedBox(height: 20),
              AnniversaryCard(
                total: eventList.length,
                emoji: '🎉',
                avatars: eventList.map((e) => e.emoji).toList(),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class BirthdayCard extends StatelessWidget {
  final int total;
  final String emoji;
  final List<String> avatars;

  const BirthdayCard({
    super.key,
    required this.total,
    required this.emoji,
    required this.avatars,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF3C2A57),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("✨ ", style: TextStyle(fontSize: 20)),
                Text(
                  "Today Birthday",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(" ✨", style: TextStyle(fontSize: 20)),
              ],
            ),
            const SizedBox(height: 16),

            // Dynamic Avatars
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  avatars
                      .map(
                        (emoji) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white,
                            child: Text(
                              emoji,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 8),

            // Total count
            const Text("Total", style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 4),
            Text(
              "$total",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Button
            ElevatedButton.icon(
              onPressed: () {
                // Birthday wishing action here
              },
              icon: const Icon(Icons.send, color: Colors.white),
              label: const Text("Birthday Wishing"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB57CF3),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnniversaryCard extends StatelessWidget {
  final int total;
  final String emoji;
  final List<String> avatars;

  const AnniversaryCard({
    super.key,
    required this.total,
    required this.emoji,
    required this.avatars,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF3C2A57),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("✨ ", style: TextStyle(fontSize: 20)),
                Text(
                  "Today Anniversary",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(" ✨", style: TextStyle(fontSize: 20)),
              ],
            ),
            const SizedBox(height: 16),

            // Dynamic Avatars
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  avatars
                      .map(
                        (emoji) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: Colors.white,
                            child: Text(
                              emoji,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 8),

            // Total count
            const Text("Total", style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 4),
            Text(
              "$total",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Button
            ElevatedButton.icon(
              onPressed: () {
                // Birthday wishing action here
              },
              icon: const Icon(Icons.send, color: Colors.white),
              label: const Text("Anniversary Wishing"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB57CF3),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
