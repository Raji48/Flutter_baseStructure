
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> createfeedbackaction(data) =>
        (Store<AppState> store) => postDioApi(
            CREATEFEEDBACK,
        data,
        [
          CREATEFEEDBACK_REQUEST,
          CREATEFEEDBACK_SUCCESS,
          CREATEFEEDBACK_FAILURE,
        ],
        store);
clearpropsfeedback(data) {
  return ResponseModal.responseResult(data.toString(), CREATEFEEDBACK_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropscreatefeedback(data) =>
        (Store<AppState> store) => store.dispatch(clearpropsfeedback(data));
