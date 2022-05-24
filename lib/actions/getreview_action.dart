import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/constans.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> getreviewction(data) =>
        (Store<AppState> store) => getDioApi(
        GETREVIEW,
        [
          GETREVIEW_REQUEST,
          GETREVIEW_SUCCESS,
          GETREVIEW_FAILURE,
        ],
        store);
clearpropsreview(data) {
  return ResponseModal.responseResult(data.toString(), GETREVIEW_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsviewreview(data) =>
        (Store<AppState> store) => store.dispatch(clearpropsreview(data));
