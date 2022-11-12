import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class CardIconWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const CardIconWidget({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.0,
        ),

        const SizedBox(
          height: 10.0,
        ),
        
        Text(
          label, 
          style: kLabelTextStyle
        )
      ],
    );
  }
}
