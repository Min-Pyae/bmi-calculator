import 'package:bmi_calculator/widget/home_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widget/bottom_button_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.resultText, required this.bmiResult, required this.interpretation});

  final String resultText;
  final String bmiResult;
  final String interpretation;
  final String normalBMIRange = "Normal BMI Range: 18.5 - 25kg/m2";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  "YOUR RESULT",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),),
              )
            ),
    
            Expanded(
              flex: 7,
              child: HomeCardWidget(
                color: kActiveCardColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 35.0,
                          color: Color(0xFF24D876),
                        ),
                      ),

                      Text(
                        bmiResult,
                        style: const TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),

                      Text(
                        normalBMIRange,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),

                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    
            BottomButtonWidget(
              title: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        )
      ),
    );
  }
}

