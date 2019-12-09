import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class DucblogBloc extends Bloc<DucblogEvent, DucblogState> {
  @override
  DucblogState get initialState => InitialDucblogState();

  @override
  Stream<DucblogState> mapEventToState(
    DucblogEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
