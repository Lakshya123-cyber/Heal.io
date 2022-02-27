import 'package:flutter/material.dart';
import 'package:hackathon_app/pages/register_page.dart';
import 'package:hackathon_app/widget/button_primary.dart';
import 'package:hackathon_app/widget/general_logo.dart';
import 'package:hackathon_app/widget/widget_illustration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: GeneralLogo(
          child: Column(
            children: [
              SizedBox(
                height: 45,
              ),
              WidgetIllustrations(
                // TODO: CHANGE THE TEXT
                image: "assets/splash_ilustration.png",
                title: "Find your medical\nsolution",
                subtitle1: "Consult with a doctor",
                subtitle2: "wherever and whenever you want",
                child: ButtonPrimary(
                  text: "GET STARTED",
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
