
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> roleselectaction(data) => (Store<AppState> store) =>
    getDioApi(
        ROLESELECT,
        [
          ROLESELECT_REQUEST,
          ROLESELECT_SUCCESS,
          ROLESELECT_FAILURE,
        ],
        store
    );
clearpropsrole(data) {
  return ResponseModal.responseResult(data.toString(), ROLESELECT_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsroleselect(data) =>
        (Store<AppState> store) => store.dispatch(clearpropsrole(data));
