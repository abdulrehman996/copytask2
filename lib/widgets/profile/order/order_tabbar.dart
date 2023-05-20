import 'package:biz_link/widgets/profile/order/sell_order.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/payment_provider.dart';
import 'buy_order.dart';

class OrderTabbar extends StatefulWidget {
  const OrderTabbar({Key? key}) : super(key: key);

  @override
  State<OrderTabbar> createState() => _OrderTabbarState();
}

class _OrderTabbarState extends State<OrderTabbar> {
  @override
  void initState() {
    Provider.of<PaymentProvider>(context, listen: false).load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          title: const Text(
            'My Orders ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          bottom: const TabBar(tabs: <Widget>[
            Text(
              'Buy',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Sell',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ]),
        ),
        body: const TabBarView(
          children: <Widget>[
            BuyOrder(),
            SellOrder(),
          ],
        ),
      ),
    );
  }
}
