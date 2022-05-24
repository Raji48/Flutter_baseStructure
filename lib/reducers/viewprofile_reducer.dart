

import 'package:wait4me/models/viewprofile/viewprofile_model.dart';
import 'package:wait4me/models/viewprofile/viewprofile_state.dart';
import 'package:wait4me/services/index.dart';

ViewprofileState viewprofileReducer(ViewprofileState state,dynamic action){
  ViewprofileState newState = state;

  switch (action.type) {

    case VIEWPROFILE_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.viewprofile = null;
      return newState;

    case VIEWPROFILE_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.viewprofile =ViewProfile.fromJson(action.payload);
      return newState;

    case VIEWPROFILE_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.viewprofile= null;
      return newState;

    case VIEWPROFILE_CLEAR_PROPS:
      if(action.payload=="true"){
        newState.error = null;
        newState.loading = false;
        newState.viewprofile= null;
      }
      return newState;

    default:
      return newState;
  }
}