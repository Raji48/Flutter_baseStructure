import 'package:wait4me/models/viewprofile/sendrequestprofile_state.dart';
import 'package:wait4me/models/viewprofile/viewprofile_model.dart';
import 'package:wait4me/services/index.dart';

SendRequestProfileState SendRequestProfileReducer(SendRequestProfileState state,dynamic action){
  SendRequestProfileState newState = state;

  switch (action.type) {

    case SENDREQUESTPROFILE_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.viewprofile = null;
      return newState;

    case SENDREQUESTPROFILE_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.viewprofile =ViewProfile.fromJson(action.payload);
      return newState;

    case SENDREQUESTPROFILE_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.viewprofile= null;
      return newState;

    case CLEAR_PROPS:
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