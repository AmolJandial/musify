import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'matches_state.dart';

class MatchesCubit extends Cubit<MatchesState> {
  MatchesCubit() : super(MatchesInitial());
}
