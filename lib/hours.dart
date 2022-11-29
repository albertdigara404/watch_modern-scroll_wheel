import 'package:flutter/material.dart';

class MyHours extends StatelessWidget {

int hrs;
 MyHours({super.key,  required this.hrs });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(hrs.toString(), style: 
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