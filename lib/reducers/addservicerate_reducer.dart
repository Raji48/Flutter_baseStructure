import 'package:wait4me/models/addservicerate/addServicerate_model.dart';
import 'package:wait4me/models/addservicerate/addServicerate_state.dart';
import 'package:wait4me/services/index.dart';

AddServicerateState AddServicerateReducer(AddServicerateState state,dynamic action){
  AddServicerateState newState = state;

  switch (action.type) {

    case ADDSERVICERATE_REQUEST:

      newState.error = null;
      newState.loading = true;
      newState.success = null;
      return newState;

    case ADDSERVICERATE_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.success = AddServicerateModel.fromJson(action.payload);
      return newState;

    case ADDSERVICERATE_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.success= null;
      return newState;

    case CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.success = null;
      }
      return newState;

    default:
      return newState;
  }
}