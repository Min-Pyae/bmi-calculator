import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {

  final Color color; 
  final Widget? child;
  final void Function()? onTap;
  
  const HomeCardWidget({
    Key? key,
    required this.color,
    this.onTap,
    this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: child,
      ),
    );
  }
}