
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> SendRequestProfileaction(data) => (Store<AppState> store) =>
    getDioApi(
        SENDREQUESTPROFILE,
        [
          SENDREQUESTPROFILE_REQUEST,
          SENDREQUESTPROFILE_SUCCESS,
          SENDREQUESTPROFILE_FAILURE,
        ],
        store
    );
clearprops(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsSendRequestProfile(data) =>
        (Store<AppState> store) => store.dispatch(clearprops(data));