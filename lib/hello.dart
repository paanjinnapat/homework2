import 'dart:math';
import 'dart:io';
import 'game.dart';

void main() {
  stdout.write('Enter a maximum number to random: ');
  var m = stdin.readLineSync();
  var maxRandom = int.tryParse(m!);

  var game = new Game(maxRandom);

  int result = 0;
  int count =0;

  List<int> myList = [];

  do {
    stdout.write('Guess the number between 1 and $maxRandom : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    count++;
    if (guess == null) {
      print('Please enter number only');
      continue;
    }
    result = game.doGuess(guess, count);
    while(result == 1){
      myList.add(count);
      count = 0;
      print('Play again? Y or N ');
      var ans = stdin.readLineSync();
      if(ans == 'Y' || ans == 'y'){
        stdout.write('Enter a maximum number to random: ');
        m = stdin.readLineSync();
        maxRandom = int.tryParse(m!);
        game = new Game(maxRandom);
        result = 0;
      }else if(ans =='N' || ans == 'n'){
        break;
      }else {
        print('Please only enter Y or N');

      }
    }



  }while (result != 1);
  var len = myList.length;
  print('You have played $len games');
  for (var i = 0; i < myList.length; i++) {
    print('🚀Game #'+ (i+1).toString() +': '+ myList[i].toString() + ' guesses');




  }

}