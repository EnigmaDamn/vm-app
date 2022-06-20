import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_shop/models/models.dart';

import '../../../constants.dart';


class Details extends StatefulWidget {
  final MGrocery item;

  const Details({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int _amount = 1;
  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.item.name,
                style: kTitleStyle.copyWith(fontSize: 18),
              ),
              SvgPicture.asset(
                'assets/icons/favorite.svg',
                color: kBlackColor.withOpacity(0.7),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            widget.item.description,
            style: kDescriptionStyle,
          ),
          SizedBox(height: 20),
          Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.horizontal_rule),
                    onPressed: () {
                      setState(() {
                        if(_amount > 1){
                          _amount-=1;
                        }else{
                          _amount = _amount;
                        }
                      });
                    }),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: kBorderColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text('$_amount', style: kTitleStyle,),
                ),
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _amount+=1;
                      });
                    }),
                Spacer(),
                Text('\$${widget.item.price}',
                    style: kTitleStyle.copyWith(fontSize: 18)),
              ]
          ),
        ],
      ),
    );
  }
}

