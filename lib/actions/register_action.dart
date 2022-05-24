import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/constans.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> registeraction(data) =>
    (Store<AppState> store) => postDioApi(
        REGISTER,
        data,
        [
          REGISTER_REQUEST,
          REGISTER_SUCCESS,
          REGISTER_FAILURE,
        ],
        store);
clearpropsreg(data) {
  return ResponseModal.responseResult(data.toString(), REGISTER_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsregister(data) =>
    (Store<AppState> store) => store.dispatch(clearpropsreg(data));
