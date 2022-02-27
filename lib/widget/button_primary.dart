import 'package:flutter/material.dart';
import 'package:hackathon_app/theme.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  ButtonPrimary({required this.text, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
