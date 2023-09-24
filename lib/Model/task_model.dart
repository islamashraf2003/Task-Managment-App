import 'package:hive/hive.dart';
//TODO: write this code in terminal to generate hive model ==> flutter packages pub run build_runner build
part 'task_model.g.dart'; //todo: and write this line but change thid part "task_model" becuse this bart debendece on "file name"

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;

  TaskModel({required this.title, required this.subTitle, required this.date});
}
