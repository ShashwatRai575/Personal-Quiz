import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  final _questions =const [
      {'questionText':'1. What\'s my favourite song?',
      'answers':[
        {'text':'Ok not to be Ok','score':0},
        {'text':'Willow','score':0},
        {'text':'Perfect','score':10},
        {'text':'Baby','score':0},
      ],}, 

      {'questionText':'2. What\'s my favourite TV show?',
      'answers':[
        {'text':'Friends','score':0},
        {'text':'Dark','score':10},
        {'text':'Game Of Thrones','score':0},
        {'text':'The Walking Dead','score':0},
        ],},

        {'questionText':'3. What is my dream career?',
      'answers':[
        {'text':'Software Developer','score':0},
        {'text':'Scientist','score':0},
        {'text':'Artist','score':0},
        {'text':'Entrepreneur','score':10},
        ],},

        {'questionText':'4. What\'s my Hobby?',
      'answers':[
        {'text':'Dancing','score':5},
        {'text':'Binge series','score':10},
        {'text':'Reading','score':0},
        {'text':'E-Sports','score':0},
        ],},

        {'questionText':'5. How do you think I would react after my break-up',
      'answers':[
        {'text':'Destroy Something','score':0},
        {'text':'Go binge drinking','score':0},
        {'text':'Stay Calm and Controlled','score':10},
        {'text':'Not gonna happen anyway,he\'s forever alone','score':0},
        ],},

        {'questionText':'6. What\'s is my dream destination with my life-partner',
      'answers':[
        {'text':'Venice','score':10},
        {'text':'Maldives','score':0},
        {'text':'Varanasi','score':0},
        {'text':'Goa','score':0},
        ],},

        {'questionText':'7. What is a perfect birthday celebration for me?',
      'answers':[
        {'text':'Big House party','score':0},
        {'text':'Night Out with friends','score':10},
        {'text':'Surprise Party','score':5},
        {'text':'Candlelight dinner with Girlfriend','score':0},
        ],},

        {'questionText':'8. What food am I obsessed with?',
      'answers':[
        {'text':'Pizza','score':0},
        {'text':'Non-Veg','score':10},
        {'text':'Maggi','score':0},
        {'text':'Cold Coffee','score':10},
        ],},

        {'questionText':'9. What does I most often use?',
      'answers':[
        {'text':'Whatsapp','score':5},
        {'text':'Instagram','score':5},
        {'text':'Snapchat','score':10},
        {'text':'Facebook','score':0},
        ],},

        {'questionText':'10. When is my Birthday?',
      'answers':[
        {'text':'5th october','score':10},
        {'text':'5th July','score':0},
        {'text':'25th October','score':0},
        {'text':'2nd July','score':0},
        ],},
      
    ];
  var _questionIndex=0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
    _totalScore=0;
    });
    
  }

  void _answerQuestion(int score){
    _totalScore += score;
    setState(() {
      _questionIndex=_questionIndex+1;
    });
    //print(_questionIndex);
    /*
    if(_questionIndex<_questions.length){
    print('We have more questions');
    }
    else{
      print('No more questions'); 
    }
    */
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          centerTitle: true,
        ),
        body: 
         _questionIndex<_questions.length? 
        Quiz(answerQuestion: _answerQuestion,
        questions: _questions,
        questionIndex: _questionIndex,)
        : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
