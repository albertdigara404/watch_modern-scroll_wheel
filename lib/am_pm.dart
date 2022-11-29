import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isAtAm;

  AmPm({super.key, required this.isAtAm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(isAtAm==true ? 'Am' : 'Pm' , style: 
          TextStyle(
            fontSize: 40, 
            color: Colors.white,
            fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}