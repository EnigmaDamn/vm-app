import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop/constants.dart';
import 'package:grocery_shop/models/models.dart';
import 'package:grocery_shop/mq.dart';
import 'package:grocery_shop/screens/shop_screen/widgets/banners.dart';
import 'package:grocery_shop/screens/shop_screen/widgets/grocery_item.dart';
import 'package:hexcolor/hexcolor.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const RoundButton({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () {},
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: kTitleStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
