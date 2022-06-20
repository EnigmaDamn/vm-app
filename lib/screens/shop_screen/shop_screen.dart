import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop/constants.dart';
import 'package:grocery_shop/models/models.dart';
import 'package:grocery_shop/mq.dart';
import 'package:grocery_shop/screens/shop_screen/widgets/banners.dart';
import 'package:grocery_shop/screens/shop_screen/widgets/grocery_item.dart';
import 'package:hexcolor/hexcolor.dart';

import 'widgets/beverages.dart';
import 'widgets/snacks.dart';
import 'widgets/groceries.dart';
import 'widgets/all_items.dart';
import 'widgets/search_field.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MQuery().init(context); //screen measurements
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            children: [
              Text(
                'The Store',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 10),
              SearchField(),
              _buildSectiontitle('Snacks', () {}),
              Snacks(),
              SizedBox(height: 10),
              _buildSectiontitle('Beverages', () {}),
              Beverages(),
              SizedBox(height: 10),
              _buildSectiontitle('Isme kya dale ?', () {}),
              Groceries(),
              SizedBox(height: 10),
              _buildSectiontitle('All items', () {}),
              Allitems(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectiontitle(String title, [Function onTap]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kTitleStyle.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
