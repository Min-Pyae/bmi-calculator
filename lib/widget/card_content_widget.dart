import "package:flutter/material.dart";

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        "HEIGHT",
        //style: kLabelTextStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: const [
          Text(
            'hI',
            //style: kNumberTextStyle,
          ),
          Text(
            "cm",
          ),
        ],
      ),
    ]);
  }
}
