import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/constans.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> notificationaction(data) =>
        (Store<AppState> store) => getDioApi(
            NOTIFICATION,
        [
          NOTIFICATION_REQUEST,
          NOTIFICATION_SUCCESS,
          NOTIFICATION_FAILURE,
        ],
        store);
clearpropsnotify(data) {
  return ResponseModal.responseResult(data.toString(), NOTIFICATION_CLEAR_PROPS);
}

ThunkAction<AppState> clearpropsnotification(data) =>
        (Store<AppState> store) => store.dispatch(clearpropsnotify(data));
