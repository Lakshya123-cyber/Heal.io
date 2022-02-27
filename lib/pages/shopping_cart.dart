import 'package:flutter/material.dart';
import 'package:hackathon_app/theme.dart';
import 'package:hackathon_app/widget/button_primary.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.all(24),
        height: 220,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Items",
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  "2",
                  style: regularTextStyle.copyWith(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Fee",
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  "SGD +1.30",
                  style: regularTextStyle.copyWith(fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Payment",
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  "SGD 39.80",
                  style: regularTextStyle.copyWith(fontSize: 16),
                )
              ],
            ),
            SizedBox(height: 30),
            Container(
              child: ButtonPrimary(text: "CHECKOUT NOW", onTap: () {}),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
              height: 70,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context, false);
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 32,
                      color: greenColor,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "My Food Cart",
                    style: regularTextStyle.copyWith(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              height: 166,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Destination",
                    style: regularTextStyle.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: greyBoldColor,
                        ),
                      ),
                      Text(
                        "Some Name",
                        style: regularTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Address",
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: greyBoldColor,
                        ),
                      ),
                      Text(
                        "Punggol, Singapore",
                        style: regularTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Phone",
                        style: regularTextStyle.copyWith(
                          fontSize: 16,
                          color: greyBoldColor,
                        ),
                      ),
                      Text(
                        "+65 91234567",
                        style: regularTextStyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              color: whiteColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/img_covid.png",
                        width: 115,
                        height: 100,
                      ),
                      Column(
                        children: [
                          Text(
                            "Medicine",
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.add_circle,
                                  color: greenColor,
                                ),
                                onPressed: () {},
                              ),
                              Text("2"),
                              IconButton(
                                icon: Icon(
                                  Icons.remove_circle,
                                  color: Colors.red,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Text(
                            "SGD 19.90",
                            style: boldTextStyle.copyWith(fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
