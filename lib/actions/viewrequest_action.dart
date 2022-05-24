import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/constans.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> viewrequestaction(data) =>
        (Store<AppState> store) => getDioApi(
        VIEWREQUEST,
        [
          VIEWREQUEST_REQUEST,
          VIEWREQUEST_SUCCESS,
          VIEWREQUEST_FAILURE,
        ],
        store);
clearpropsrequest(data) {
  return ResponseModal.responseResult(data.toString(), VIEWREQUEST_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsviewrequest(data) =>
        (Store<AppState> store) => store.dispatch(clearpropsrequest(data));
