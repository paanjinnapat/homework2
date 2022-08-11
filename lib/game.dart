import 'dart:math';
import 'dart:io';


class Game{
  int answer =0;
  int maxRandom =0;

  Game(maxRandom){

    var r = Random();
    if(maxRandom == null){
      maxRandom = 100;
    }
    answer = r.nextInt(maxRandom)+1;
    print('Answer is $answer');


  }

  int doGuess(int num, int count){
    if(num > answer) {
      print('➜ $num is TOO HIGH▲');
      return 0;
    }else if(num < answer){
      print('➜ $num is TOO LOW▼');
      return 0;
    }else{
      print('➜ 5$num is CORRECT❤ , total guesses: $count');
      return 1;
    }
  }
}