
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/services/index.dart';

ThunkAction<AppState> stripeaccountAction(data) => (Store<AppState> store) => postDioApi(
    STRIPEACCOUNT,
    data,
    [
      STRIPEACCOUNT_REQUEST,
      STRIPEACCOUNT_SUCCESS,
      STRIPEACCOUNT_FAILURE,
    ],
    store);
