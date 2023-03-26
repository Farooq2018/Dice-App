import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//This is the Stateless Widget, it does not really change
// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var leftDice = 5;
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print('Left button got pressed');
//               },
//               child: Image.asset('images/dice$leftDice.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print('Right button got pressed');
//               },
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//This is the Stateful Widget, which meant to be dynamic and it can change
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  // leftDice = Random().nextInt(6) + 1; //Range from 1-6
                  // rightDice = Random().nextInt(6) + 1;
                  getRandomNumber();
                  print("Left Dice Number = $leftDice");
                });
                //print('Left button got pressed');
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  // rightDice = Random().nextInt(6) + 1;
                  // leftDice = Random().nextInt(6) + 1;
                  getRandomNumber();
                  print('Right dice Number = $rightDice');
                });
                // print('Right button got pressed');
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }

  void getRandomNumber() {
    rightDice = Random().nextInt(6) + 1;
    leftDice = Random().nextInt(6) + 1;
  }

  //Another way to do the function
  // void getRandomNumber2() {
  //   setState(() {
  //     rightDice = Random().nextInt(6) + 1;
  //     leftDice = Random().nextInt(6) + 1;
  //   });
  // }
}
