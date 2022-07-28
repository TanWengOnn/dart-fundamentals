//import 'package:guess_the_number/guess_the_number.dart' as guess_the_number;
import 'dart:io';
import 'dart:math';
import 'dart:convert';


void main(List<String> arguments) {
  final random = Random();
  int min = 1;
  int max = 11;

  int random_number = min + random.nextInt(max - min);
  print(random_number);

  bool game = true;

  while(game){
    print("Guess a number between 1-10\n");

    print("Enter a number: ");
    String? number = stdin.readLineSync();

    //int? number = int.parse(stdin.readLineSync()!);

    try{
      // "!" is null safety (bypass the null error)
      if (int.parse(number!) < random_number){
        print("Guessed number is too low\n");
      }
      else if (int.parse(number) > random_number){
        print("Guessed number is too high\n");
      }
      else{
        print("you have guessed the correct number\n");
        game=false;
      }
    } on Exception catch (e) {
      print("please enter a number\n");
      //print(e);
    }

  }
}

