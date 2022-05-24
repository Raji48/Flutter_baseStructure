
import 'package:wait4me/models/editprofle/editprofile_model.dart';
import 'package:wait4me/models/editprofle/editprofile_state.dart';
import 'package:wait4me/services/index.dart';

EditprofileState editprofileReducer(EditprofileState state,dynamic action){
  EditprofileState newState = state;

  switch (action.type) {

    case EDITPROFILE_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.editprofile = null;
      return newState;

    case EDITPROFILE_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.editprofile = EditprofileModel.fromJson(action.payload);
      return newState;

    case EDITPROFILE_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.editprofile = null;
      return newState;

    case EDITPROFILE_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.editprofile = null;
      }
      return newState;

    default:
      return newState;
  }
}