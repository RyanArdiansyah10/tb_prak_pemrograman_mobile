import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/item.dart';
import '../providers/item_provider.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  final int index;

  ItemTile({required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        title: Text(
          item.name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: () {
            Provider.of<ItemProvider>(context, listen: false).deleteItem(index);
          },
        ),
      ),
    );
  }
}
