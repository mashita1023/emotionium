import 'package:emotionium/models/emotion.dart';

class Record {
  int id;
  Emotion emotion;
  DateTime createdAt;

  Record({required this.id, required this.emotion, required this.createdAt});
}