import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> Getwaiteraction(data) => (Store<AppState> store) =>
    getDioApi(
        GETWAITER_API,
        [
          GETWAITER_REQUEST,
          GETWAITER_SUCCESS,
          GETWAITER_FAILURE,
        ],
        store
    );
clearprops(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsgetwaiter(data) =>
        (Store<AppState> store) => store.dispatch(clearprops(data));