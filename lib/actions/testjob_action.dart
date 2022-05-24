import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> testjobaction(data) =>
        (Store<AppState> store) => getDioApi(
            TESTJOB,
        [
          TESTJOB_REQUEST,
          TESTJOB_SUCCESS,
          TESTJOB_FAILURE,
        ],
        store);
clearpropstestjob(data) {
  return ResponseModal.responseResult(data.toString(),  TESTJOB_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropstestjobdetail(data) =>
        (Store<AppState> store) => store.dispatch(clearpropstestjob(data));
