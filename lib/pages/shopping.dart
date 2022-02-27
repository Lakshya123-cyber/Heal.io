import 'package:flutter/material.dart';
import 'package:hackathon_app/components/shopping_card.dart';
import 'package:hackathon_app/pages/cart_page.dart';
import 'package:hackathon_app/theme.dart';
import 'package:hackathon_app/widget/card_category.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.fromLTRB(24, 30, 24, 30),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 155,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Find your right food\n with HEAL.IO!",
                      style: regularTextStyle.copyWith(
                          fontSize: 15, color: greyBoldColor),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.shopping_cart_outlined, color: greenColor),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Food Items by Category",
              style: regularTextStyle.copyWith(fontSize: 16),
            ),
            SizedBox(height: 30),
            buildList(),
          ],
        ),
      ),
    );
  }

  buildList() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          ShoppingCard(
            'Protein',
            'Chicken',
            'assets/chicken.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          ShoppingCard(
            'Calcium',
            'Milk Carton',
            'assets/milk.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          ShoppingCard(
            'Carbohydrates',
            'Loaf of Bread',
            'assets/bread.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          ShoppingCard(
            'Protein',
            'Egg Crate',
            'assets/eggs.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          ShoppingCard(
            'Fat',
            'Maasdamn Cheese',
            'assets/cheese.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          ShoppingCard(
            'Fat',
            'Oily fries',
            'assets/fries.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          ShoppingCard(
            'Fat',
            'Regular Pizza',
            'assets/pizza.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          ShoppingCard(
            'Fat',
            'Double FatSpicy',
            'assets/burger.png',
            kYellowColor,
          ),
        ],
      ),
    );
  }
}
