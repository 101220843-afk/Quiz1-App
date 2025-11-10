import 'package:flutter/material.dart';

class Caffe extends StatefulWidget {
  const Caffe({super.key});

  @override
  State<Caffe> createState() {
    return _CaffeState();
  }
}

class _CaffeState extends State<Caffe> {
  String userChoice = '❓';
  int teaChoice = 0;
  int coffeChoice = 0;

  void tea() {
    setState(() {
      userChoice = '🍵';
      teaChoice++;
    });
  }

  void coffe() {
    setState(() {
      userChoice = '☕';
      coffeChoice++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('${userChoice}', style: TextStyle(fontSize: 50))),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: tea,
                child: Text(
                  'Vote Tea',
                  style: TextStyle(fontSize: 20),
                  selectionColor: Colors.green,
                ),
              ),

              SizedBox(width: 20),
              ElevatedButton(
                onPressed: coffe,
                child: Text(
                  'Vote Coffe',
                  style: TextStyle(fontSize: 20),
                  selectionColor: Colors.brown,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              setState(() {
                userChoice = '❓';
                teaChoice = 0;
                coffeChoice = 0;
              });
            },
            child: Text('Reset', style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 20),
          Text('Tea Votes: ${teaChoice}', style: TextStyle(fontSize: 20)),
          Text('Coffe Votes: ${coffeChoice}', style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
