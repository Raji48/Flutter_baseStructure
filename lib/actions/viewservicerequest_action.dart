import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> viewservicerequestaction(data) =>
        (Store<AppState> store) => getDioApi(
        VIEWSERVICEREQUEST,
        [
          VIEWSERVICEREQUEST_REQUEST,
          VIEWSERVICEREQUEST_SUCCESS,
          VIEWSERVICEREQUEST_FAILURE,
        ],
        store);
clearpropsprofile(data) {
  return ResponseModal.responseResult(data.toString(), CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsviewservicerequest(data) =>
        (Store<AppState> store) => store.dispatch(clearpropsprofile(data));
