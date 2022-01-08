import 'package:flutter/material.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
   //MyApp({Key? key}) : super(key: key);
   @override
  // ignore: use_function_type_syntax_for_parameters
  
  
  var questionIndex = 0;

  void answerQuestion() {
    setState((){questionIndex = questionIndex+1;});
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      'What\s your favourite animal?'
    ]; //list of questions
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.brown[400],
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text(questions[questionIndex]),
            ),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!')),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
