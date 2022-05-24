import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> changePasswordAction(data) => (Store<AppState> store) => postDioApi(
        CHANGEPASSWORD_API,
        data,
        [
          CHANGEPASSWORD_REQUEST,
          CHANGEPASSWORD_SUCCESS,
          CHANGEPASSWORD_FAILURE,
        ],
        store);
clearProps(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropschangePassword(data) => (Store<AppState> store) => store.dispatch(clearProps(data));
