import 'package:flutter/material.dart';

abstract class Vote_Tea extends StatefulWidget {
  const Vote_Tea({super.key});


  @override
  State<Vote_Tea> createState();
  return Vote_TeaState();
  
}
class Vote_Tea extends State<Vote_Tea>{
  String sentence="❔";
  String sentence = "Tea or Coffe";
  int Tea_Votes=0;
  int Coffee_Votes=0;
  

  void Vote_Tea(){
    setState(() {
      sentence="🍵";
      Tea_Votes++;
    });
    
  void Vote_Coffee(){
    setState(() {
      sentence="☕";
      Coffee_Votes++;
    });
  }
}

@override
Widget build(BuildContext cotext){
  return Scaffold(backgroundColor: Colors.white,
  body: Column(mainAxisAlignment:MainAxisAlignment.center
  children:[
    Center(child: Text('Tea or Coffe'),style:TextStyle(fontSize: 40)),
    SizedBox(height: 20),
    child:Text('$sentence',style:TextStyle(fontSize: 40)),
      SizedBox(height: 20);
      Row(MainAxisAlignment:MainAxisAlignment.center,

      children: [ElevatedButton(onPressed: Vote_Tea, child: Text()))];

}
}
}