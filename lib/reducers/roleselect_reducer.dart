
import 'package:wait4me/models/roleselect/roleselect_model.dart';
import 'package:wait4me/models/roleselect/roleselect_state.dart';
import 'package:wait4me/services/index.dart';

RoleselectState roleselectReducer(RoleselectState state,dynamic action){
  RoleselectState newState = state;

  switch (action.type) {

    case ROLESELECT_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.roleselect = null;
      return newState;

    case ROLESELECT_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.roleselect = RoleSelectModel.fromJson(action.payload);
      return newState;

    case ROLESELECT_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.roleselect = null;
      return newState;

    case ROLESELECT_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.roleselect = null;
      }
      return newState;

    default:
      return newState;
  }
}