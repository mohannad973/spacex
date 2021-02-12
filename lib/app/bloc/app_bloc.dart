
import 'package:bloc/bloc.dart';


import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {




  @override
  AppState get initialState => AppState.initail();


  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is IniEvent) {


    }
  }
}
