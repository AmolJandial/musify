import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(const OnBoardingFirst());

  void setPage(int index){
    switch(index){
      case 0: emit(const OnBoardingFirst());
      case 1: emit(const OnBoardingSecond());
      case 2: emit(const OnBoardingThird());
    }
  }
}
