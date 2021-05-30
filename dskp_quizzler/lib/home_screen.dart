import 'package:flutter/material.dart';
import 'question.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  int count = 0;

  final tickIcon = Icon(Icons.check, color: Colors.green);
  final crossIcon = Icon(Icons.cancel, color: Colors.red);

  int correct = 0;
  int incorrect = 0;

  List<Widget> iconsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButton: FloatingActionButton(),
        backgroundColor: Colors.black26,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ///
              /// Question Text
              ///
              SizedBox(height: 150),

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  questions[count].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Correct: $correct,   Incorrect: $incorrect',
                style: TextStyle(color: Colors.white),
              ),

              // FloatingActionButton(
              //   child: Icon(Icons.add),
              //   onPressed: () {
              //     print('Add');
              //   },
              // ),
              // FloatingActionButton(
              //   child: Icon(Icons.cancel),
              //   onPressed: () {
              //     print('Subtract');
              //   },
              // ),

              Spacer(),
              // SizedBox(height: 330),

              ///
              /// True Button
              ///
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: const EdgeInsets.only(top: 20, bottom: 20)),
                  onPressed: () {
                    if (questions[count].answer == true) {
                      /// Correct answer
                      iconsList.add(tickIcon);
                      correct++;
                      print('Correct Answer');
                    } else {
                      /// Incorrect
                      iconsList.add(crossIcon);
                      incorrect++;
                      print('Incorrect Answer');
                    }
                    count++;
                    setState(() {});
                  },
                  child: Text('TRUE'),
                ),
              ),

              ///
              /// False Button
              ///
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                  ),
                  onPressed: () {
                    if (questions[count].answer == false) {
                      /// Correct Answer
                      iconsList.add(tickIcon);
                      correct++;
                      print('Correct answer');
                    } else {
                      /// Incorrect answer
                      iconsList.add(crossIcon);
                      incorrect++;
                      print('Incorrect answer');
                    }
                    count++;
                    setState(() {});
                  },
                  child: Text('False'),
                ),
              ),

              SizedBox(height: 10),

              ///
              /// Row of tick and cross icons
              ///
              Row(
                children: iconsList,
              ),
            ],
          ),
        ));
  }
}

/// MYAPP:
///   Homescreen
///     Text
///     Button1
///     button2
///     Tick and cross icons
///
