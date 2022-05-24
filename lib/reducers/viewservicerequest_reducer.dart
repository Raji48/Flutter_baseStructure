import 'package:wait4me/models/viewservicerequest/viewservicerequest_model.dart';
import 'package:wait4me/models/viewservicerequest/viewservicerequest_state.dart';
import 'package:wait4me/services/index.dart';
import 'package:wait4me/models/errormodel.dart';

ViewServiceRequestState ViewServiceRequestReducer(ViewServiceRequestState state, dynamic action) {
  ViewServiceRequestState newState = state;

  switch (action.type) {
    case VIEWSERVICEREQUEST_REQUEST:
      newState.loading = true;
      newState.success = null;
      newState.error = null;
      return newState;

    case VIEWSERVICEREQUEST_SUCCESS:
      newState.loading = false;
      newState.success = ViewServiceRequestModel.fromJson(action.payload);
      newState.error = null;
      return newState;

    case VIEWSERVICEREQUEST_FAILURE:
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
