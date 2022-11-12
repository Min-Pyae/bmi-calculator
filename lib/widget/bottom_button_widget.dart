import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({
    Key? key,
    required this.title,
    required this.onTap
  }) : super(key: key);

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        color: kBottomButtonColor,
        height: kBottomButtonHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}

