import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/ApiTypes.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> ChooseTaskaction(data) => (Store<AppState> store) =>
    getDioApi(
        SENDREQUEST_API,
        [
          CHOOSETASK_REQUEST,
          CHOOSETASK_SUCCESS,
          CHOOSETASK_FAILURE,
        ],
        store
    );
clearprops(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsChooseTask(data) =>
        (Store<AppState> store) => store.dispatch(clearprops(data));