import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> forgetPasswordAction() => (Store<AppState> store) => getDioApi(
        FORGETPASSWORD_API,
        [
          FORGETPASSWORD_REQUEST,
          FORGETPASSWORD_SUCCESS,
          FORGETPASSWORD_FAILURE,
        ],
        store);
clearProps(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsforgetPassword(data) => (Store<AppState> store) => store.dispatch(clearProps(data));
