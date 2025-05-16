// import '../../domain/entities/event.dart';

// class EventModel extends Event {
//   EventModel({required String title, required List<String> icons})
//     : super(title: title, icons: icons);

//   factory EventModel.fromJson(Map<String, dynamic> json) =>
//       EventModel(title: json['title'], icons: List<String>.from(json['icons']));
// }

import '../../domain/entities/event.dart';

class EventModel extends Event {
  EventModel({
    required String title,
    required List<String> icons,
    required String emoji,
  }) : super(title: title, icons: icons, emoji: emoji);

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      title: json['title'] ?? '',
      icons: List<String>.from(json['icons'] ?? []),
      emoji: json['emoji'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'icons': icons, 'emoji': emoji};
  }
}
