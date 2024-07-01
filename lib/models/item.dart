import 'package:hive/hive.dart';

part 'item.g.dart';

@HiveType(typeId: 0)
class Item {
  @HiveField(0)
  String name;

  @HiveField(1)
  bool isBought;

  Item({required this.name, this.isBought = false});
}
