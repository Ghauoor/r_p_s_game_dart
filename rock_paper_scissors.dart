import 'dart:io';
import 'dart:math';

enum Moves {
  rock,
  paper,
  seccisor,
}

void main() {
  final rng = Random();

  while (true) {
    stdout.write(
        'Rock, Paper, Seccisor & Press q to Quite any Time ? (r/p/s/q) ');
    final input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      var playMoves;

      final random = rng.nextInt(3);
      final aiMoves = Moves.values[random];

      if (input == 'r') {
        playMoves = Moves.rock;
      } else if (input == 's') {
        playMoves = Moves.seccisor;
      } else {
        playMoves = Moves.paper;
      }

      print('You Play $playMoves');
      print('AI move $aiMoves');

      if (playMoves == aiMoves) {
        print('its a draw');
      } else if (playMoves == Moves.rock && aiMoves == Moves.seccisor ||
          playMoves == Moves.paper && aiMoves == Moves.rock ||
          playMoves == Moves.seccisor && aiMoves == Moves.paper) {
        print('You Win!!!');
      } else {
        print('You Lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('invalid Input');
    }
  }
}
