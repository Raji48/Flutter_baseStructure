import 'package:wait4me/models/sendrequest/sendrequest_model.dart';
import 'package:wait4me/models/sendrequest/sendrequest_state.dart';
import 'package:wait4me/services/index.dart';
import 'package:wait4me/models/errormodel.dart';

SendRequestState SendRequestReducer(SendRequestState state, dynamic action) {
  SendRequestState newState = state;

  switch (action.type) {
    case SENDREQUEST_REQUEST:
      newState.loading = true;
      newState.success = null;
      newState.error = null;
      return newState;

    case SENDREQUEST_SUCCESS:
      newState.loading = false;
      newState.success = SendRequestModel.fromJson(action.payload);
      newState.error = null;
      return newState;

    case SENDREQUEST_FAILURE:
      newState.loading = false;
      newState.success = null;
      newState.error =  Error.fromJson(action.payload);
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
