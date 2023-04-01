import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);

String get resultPhrase{
  var resultText;
  
  if(resultScore>75){
    resultText='You know me so well! LOVE YOU❤️';
  }
  else if(resultScore<75 && resultScore>=50){
resultText='You are a good Friend';
} else if(resultScore<50 && resultScore>=25){
  resultText='You should hang out with me little more';
}
else{
   resultText='I think you don\'t know me that well';
}

  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          
          Text('Your score is ' '$resultScore',
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
    
          ),
          
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center ,
            
            ),
            TextButton(onPressed: resetHandler, child: Text('Restart Quiz',
            ),
          style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.green)),
            ),
        ],
      ),
   
    );
  }
}