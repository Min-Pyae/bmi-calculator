import 'package:bmi_calculator/data/bmi_calculator.dart';
import 'package:bmi_calculator/screen/result.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/widget/home_card_widget.dart';
import 'package:bmi_calculator/widget/card_icon_widget.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/widget/bottom_button_widget.dart';
import 'package:bmi_calculator/widget/round_icon_button_widget.dart';

enum Gender {
  male,
  female;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Gender? selectedGender;
  int height = 160;
  int weight = 55;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: HomeCardWidget(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                      child: const CardIconWidget(
                        icon: Icons.male,
                        label: "MALE",
                      ),
                    ),
                  ),

                  Expanded(
                    child: HomeCardWidget(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                      child: const CardIconWidget(
                        icon: Icons.female,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: HomeCardWidget(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          "cm",
                        ),
                      ],
                    ),
                     
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kSliderActiveTrackColor,
                        thumbColor: kSliderThumbColor,
                        inactiveTrackColor: kSliderinActiveTrackColor,
                        overlayColor: kSliderOverlayColor,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: kRoundSliderThumbShapeRadius
                        ),
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: kRoundSliderOverlayShapeRadius
                        )
                      ),
                      child: Slider(
                        min: 120.0,
                        max: 220.0,
                        value: height.toDouble(), 
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                    )
                  ],
                ),
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: HomeCardWidget(
                      color: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: kLabelTextStyle,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toString(),
                                style: kNumberTextStyle,
                              ),
                              const Text(
                                "kg",
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 8.0,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: (){
                                  setState(() {
                                    if (weight > 0) {
                                      weight--;
                                    }
                                  });
                                }, 
                                icon: Icons.remove
                              ),

                              const SizedBox(width: 10.0,),
                              
                              RoundIconButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                }, 
                                icon: Icons.add
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    child: HomeCardWidget(
                      color: kActiveCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                            style: kLabelTextStyle,
                          ),

                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                        
                          const SizedBox(
                            height: 8.0,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: (){
                                  setState(() {
                                    if (age > 0) {
                                      age--;
                                    }
                                  });
                                }, 
                                icon: Icons.remove
                              ),

                              const SizedBox(width: 10.0,),

                              RoundIconButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                }, 
                                icon: Icons.add
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),

            BottomButtonWidget(
              title: "CALCULATE",
              onTap: () {
                BMICalculator calculator = BMICalculator(height: height, weight: weight);
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ResultPage(
                    resultText: calculator.getBMIResult(),
                    bmiResult: calculator.calculateBMI(),
                    interpretation: calculator.getInterpretation(),
                  ))
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}





