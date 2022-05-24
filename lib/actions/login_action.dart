import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> loginAction(data) => (Store<AppState> store) => postDioApi(
        LOGIN_API,
        data,
        [
          LOGIN_REQUEST,
          LOGIN_SUCCESS,
          LOGIN_FAILURE,
        ],
        store);
clearProps(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsLogin(data) => (Store<AppState> store) => store.dispatch(clearProps(data));
