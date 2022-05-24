import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/constans.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> viewprofileaction(data) =>
        (Store<AppState> store) => getDioApi(
        VIEWPROFILE,
        [
          VIEWPROFILE_REQUEST,
          VIEWPROFILE_SUCCESS,
          VIEWPROFILE_FAILURE,
        ],
        store);
clearpropsprofile(data) {
  return ResponseModal.responseResult(data.toString(), VIEWPROFILE_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsviewprofile(data) =>
        (Store<AppState> store) => store.dispatch(clearpropsprofile(data));
