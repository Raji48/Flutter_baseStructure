import 'dart:async';
import 'package:dio/dio.dart';
import 'package:redux/redux.dart';
import 'package:wait4me/models/app_state.dart';

void apiMiddleware(Store<AppState> store, dynamic action, NextDispatcher next) {
  Timer? _timer;
  CancelToken? _token;
  _timer?.cancel();
  _token?.cancel("cancelled");
  _timer = new Timer(new Duration(milliseconds: 250), () {
    _token = new CancelToken();
  });
  // Make sure to forward actions to the next middleware in the chain!
  next(action);
}

