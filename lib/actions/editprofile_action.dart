
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> editprofileaction(data) => (Store<AppState> store) =>
    postDioApi(
        EDITPROFILE,
        data,
        [
          EDITPROFILE_REQUEST,
          EDITPROFILE_SUCCESS,
          EDITPROFILE_FAILURE,
        ],
        store
    );
clearpropsprofileedit(data) {
  return ResponseModal.responseResult(data.toString(), VIEWPROFILE_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropseditprofile(data) =>
        (Store<AppState> store) => store.dispatch(clearpropsprofileedit(data));
