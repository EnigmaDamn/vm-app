import 'package:flutter/material.dart';
import 'package:grocery_shop/models/models.dart';

import '../../../mq.dart';
import 'grocery_item.dart';

class Allitems extends StatelessWidget {
  Allitems({
    Key key,
  }) : super(key: key);

  final List<MGrocery> _items = [
    MGrocery(
      name: 'Lays Indian Magic',
      url: 'assets/images/prod4.png',
      description: '7 pcs',
      price: 20,
    ),
    MGrocery(
      name: 'Kitkat',
      url: 'assets/images/prod0.png',
      description: '4 pcs',
      price: 10,
    ),
    MGrocery(
      name: 'Kurkure Masala Munch',
      url: 'assets/images/prod2.png',
      description: '3 pcs',
      price: 12,
    ),
    MGrocery(
      name: 'Lays American',
      url: 'assets/images/prod3.png',
      description: '3 pcs',
      price: 20,
    ),
    MGrocery(
      name: 'Coca Cola Diet Coke',
      url: 'assets/images/prod5.png',
      description: '4 pcs',
      price: 40,
    ),
    MGrocery(
      name: 'Amul Kool Cafe',
      url: 'assets/images/prod1.png',
      description: '4 pcs',
      price: 35,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MQuery.height * 0.3,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (_, i) => GroceryItem(item: _items[i]),
        separatorBuilder: (_, __) => SizedBox(width: 10),
      ),
    );
  }
}
