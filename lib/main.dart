import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'models/item.dart';
import 'providers/item_provider.dart';
import 'screens/item_list_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ItemAdapter());
  await Hive.openBox<Item>('items');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ItemProvider(),
      child: MaterialApp(
        title: 'Daftar Belanja',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ItemListScreen(),
      ),
    );
  }
}
