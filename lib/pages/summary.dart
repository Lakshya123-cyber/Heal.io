import 'package:flutter/material.dart';
import 'package:hackathon_app/components/shopping_card.dart';
import 'package:hackathon_app/components/summary_card.dart';
import 'package:hackathon_app/pages/profile_page.dart';
import 'package:hackathon_app/theme.dart';
import 'package:hackathon_app/widget/card_category.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 18),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context, false);
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          size: 32,
                          color: greenColor,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/logo.png',
                      width: 155,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "WOOHOO We reached the\n end of the day!",
                      style: regularTextStyle.copyWith(
                          fontSize: 15, color: greyBoldColor),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Summary",
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
          SummaryCard(
            'Heart Rate',
            '70 BPM',
            'assets/heart.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          SummaryCard(
            'Steps Analysis',
            '10,073 steps',
            'assets/steps.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          SummaryCard(
            'Next Meal in',
            '1hr 7mins',
            'assets/diet.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          SummaryCard(
            'Sleep Analysis',
            '7hr 47mins',
            'assets/sleep.png',
            kBlueColor,
          ),
          SizedBox(
            height: 20,
          ),
          SummaryCard(
            'Daily Routine',
            'Monday',
            'assets/daily.png',
            kYellowColor,
          ),
          SizedBox(
            height: 20,
          ),
          SummaryCard(
            'Training Schedule',
            'Tuesday, 7am',
            'assets/training.png',
            kOrangeColor,
          ),
          SizedBox(
            height: 20,
          ),
          SummaryCard(
            'Medical Report',
            'Checkup Due',
            'assets/checkup.png',
            kBlueColor,
          ),
        ],
      ),
    );
  }
}
