import 'package:flutter/material.dart';
import 'package:modern_scroll_wheel/am_pm.dart';
import 'package:modern_scroll_wheel/hours.dart';
import 'package:modern_scroll_wheel/minutes.dart';
import 'package:modern_scroll_wheel/tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (context, index) {
                return MyHours(
                  hrs: index,
                  );
                },
              ),
            ),
          ),

          const SizedBox(width: 10,),

          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (context, index) {
                return MyMinutes(
                  mins: index,
                  );
                },
              ),
            ),
          ),
          
          const SizedBox(width: 10,),

          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index) {
                  if(index==0){
                    return AmPm(isAtAm: true,
                    );
                  }else{
                    return AmPm(isAtAm: false);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
