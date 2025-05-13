// cubit/game_state_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

enum GameStatus { playing, gameOver }

class GameStateCubit extends Cubit<GameStatus> {
  GameStateCubit() : super(GameStatus.playing);

  void endGame() => emit(GameStatus.gameOver);
  void restartGame() => emit(GameStatus.playing);
}
