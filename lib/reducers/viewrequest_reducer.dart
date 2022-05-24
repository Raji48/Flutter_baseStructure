

import 'package:wait4me/models/viewrequests/viewrequest_model.dart';
import 'package:wait4me/models/viewrequests/viewrequest_state.dart';
import 'package:wait4me/services/index.dart';

ViewRequestState viewrequestReducer(ViewRequestState state,dynamic action){
  ViewRequestState newState = state;

  switch (action.type) {

    case VIEWREQUEST_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.viewrequest = null;
      return newState;

    case VIEWREQUEST_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.viewrequest =  ViewRequestModel.fromJson(action.payload);
      return newState;

    case VIEWREQUEST_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.viewrequest = null;
      return newState;

    case VIEWREQUEST_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.viewrequest = null;
      }
      return newState;

    default:
      return newState;
  }
}