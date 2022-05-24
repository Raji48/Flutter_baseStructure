import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> loginAction(data) => (Store<AppState> store) => postDioApi(
    SENDREQUEST_API,
    data,
    [
      SENDREQUEST_REQUEST,
      SENDREQUEST_SUCCESS,
      SENDREQUEST_FAILURE,
    ],
    store);
clearProps(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsSendRequest(data) => (Store<AppState> store) => store.dispatch(clearProps(data));
