import 'package:wait4me/models/errormodel.dart';
import 'package:wait4me/models/getwaiter/getwaiter_model.dart';
import 'package:wait4me/models/getwaiter/getwaiter_state.dart';
import 'package:wait4me/services/index.dart';

GetWaiterState GetWaiterReducer(GetWaiterState state, dynamic action) {
  GetWaiterState newState = state;

  switch (action.type) {
    case GETWAITER_REQUEST:
      newState.loading = true;
      newState.success = null;
      newState.error = null;
      return newState;

    case GETWAITER_SUCCESS:
      newState.loading = false;
      newState.success = GetWaiterModel.fromJson(action.payload);
      newState.error = null;
      return newState;

    case GETWAITER_FAILURE:
      newState.loading = false;
      newState.success = null;
      newState.error =  state.error;
      return newState;

    case CLEAR_PROPS:
      if (action.payload == "true") {
        newState.loading = false;
        newState.success = null;
        newState.error = null;
      }
      return newState;

    default:
      return newState;
  }
}
