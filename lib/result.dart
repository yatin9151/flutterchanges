import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  
  String get resultPhrase{
    
    String resultText;
    if (resultScore <= 14) {
      print(resultScore);
       resultText = "You are innocent";
    }else if(resultScore > 14 && resultScore <= 16){
      resultText = "You are okish";
    }else{
      resultText = "You sucks man!!!";
    }
    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
