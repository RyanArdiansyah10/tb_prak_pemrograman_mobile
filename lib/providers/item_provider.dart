import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/item.dart';

class ItemProvider with ChangeNotifier {
  final Box<Item> _itemBox = Hive.box<Item>('items');

  List<Item> get items => _itemBox.values.toList();

  void addItem(String name) {
    final newItem = Item(name: name);
    _itemBox.add(newItem);
    notifyListeners();
  }

  void updateItem(int index, Item item) {
    _itemBox.putAt(index, item);
    notifyListeners();
  }

  void deleteItem(int index) {
    _itemBox.deleteAt(index);
    notifyListeners();
  }
}
