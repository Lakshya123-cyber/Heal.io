import 'package:flutter/material.dart';
import 'package:hackathon_app/components/product_card.dart';
import 'package:hackathon_app/pages/cart_page.dart';
// import 'package:hackathon_app/model/categories.dart';
import 'package:hackathon_app/theme.dart';
import 'package:hackathon_app/widget/card_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      "Find a medicine or\nvitamins with HEAL.IO!",
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
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffe4faf0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xffb1d8b2),
                  ),
                  hintText: "Search for medicine",
                  hintStyle: regularTextStyle.copyWith(
                    color: Color(0xffb0d8b2),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Medicine and Vitamins by Category",
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
          ProductCard(
            'Vitamins',
            'Medicines',
            'assets/img_vitamins.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          ProductCard(
            'Skin',
            'Skin Care',
            'assets/img_skin.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          ProductCard(
            'Fever',
            'Medicine for Fever',
            'assets/img_fever.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          ProductCard(
            'Digestive Pills',
            'Medicine for proper digestion',
            'assets/img_digestive.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          ProductCard(
            'Masks',
            '4 layers surgical masks',
            'assets/img_covid.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          ProductCard(
            'Cough Medicine',
            'Cure to sore throat',
            'assets/img_cough_flu.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          ProductCard(
            'Antiseptics',
            'Dettol',
            'assets/img_antiseptics.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          ProductCard(
            'Antibiotics',
            'Medicine for bacteria',
            'assets/img_antibiotics.png',
            kOrangeColor,
          ),
        ],
      ),
    );
  }
}
