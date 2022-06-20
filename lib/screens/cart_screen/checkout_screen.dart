import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop/constants.dart';
import 'package:grocery_shop/models/models.dart';
import 'package:grocery_shop/mq.dart';
import 'package:grocery_shop/screens/shop_screen/shop_screen.dart';
import 'package:grocery_shop/screens/shop_screen/widgets/banners.dart';
import 'package:grocery_shop/screens/shop_screen/widgets/grocery_item.dart';
import 'package:hexcolor/hexcolor.dart';

import '../home_screen/home.dart';

class CartScreen extends StatefulWidget {
  final MGrocery item;
  CartScreen({Key key, this.item}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => new Home())),
          child: Icon(Icons.chevron_left, color: kBlackColor, size: 30),
        ),
        title: Text("Cart",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(102, 147, 141, 141),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      Text('Amul Kool',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      const SizedBox(height: 7.0),
                      Text('NIKE Men\'s Shoes | US7.5',
                          style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text('\$120',
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          const SizedBox(width: 120.0),
                          Text('x 1',
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 130.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/item2.png"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      Text('LeBron 19 Low',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      const SizedBox(height: 7.0),
                      Text('Basketball Shoes | US7.5',
                          style: TextStyle(
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text('\$160',
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          const SizedBox(width: 120.0),
                          Text('x 1',
                              style: TextStyle(
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 180.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub-total',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                  Text('\$280.00',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ],
              ),
              const SizedBox(height: 15.0),
              Container(width: size.width, height: 1.0, color: Colors.grey),
              const SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Payment',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  Text('\$295.00',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                ],
              ),
              const SizedBox(height: 70.0),
              GestureDetector(
                onTap: () {},
                child: Container(
                    height: 45.0,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Center(
                      child: Text("Check out",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
