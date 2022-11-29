import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.deepOrangeAccent,
            child: Center(child: Text("Hello World")),  
    );
  }
}