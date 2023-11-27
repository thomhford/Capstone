import 'package:bloc/bloc.dart';

class NavigationBloc extends Bloc<int, int> {
  NavigationBloc() : super(0) {
    on<int>((event, emit) {
      emit(event);
    });
  }
}
