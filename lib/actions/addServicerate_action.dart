
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/ApiController.dart';
import 'package:wait4me/services/constans.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> AddServicerateAction(data) => (Store<AppState> store) => postDioApi(
    ADDSERVICERATE_API,
    data,
    [
      ADDSERVICERATE_REQUEST,
      ADDSERVICERATE_SUCCESS,
      ADDSERVICERATE_FAILURE,
    ],
    store);
clearProps(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsaddservicerate(data) => (Store<AppState> store) => store.dispatch(clearProps(data));
