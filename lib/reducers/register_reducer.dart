

import 'package:wait4me/models/register/register_model.dart';
import 'package:wait4me/models/register/register_state.dart';
import 'package:wait4me/services/constans.dart';
import 'package:wait4me/models/errormodel.dart';

RegisterState registerReducer(RegisterState state,dynamic action){
  RegisterState newState = state;

  switch (action.type) {

    case REGISTER_REQUEST:

      newState.error = null;
      newState.loading = true;
      newState.registered = null;
      return newState;

    case REGISTER_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.registered = RegisterModel.fromJson(action.payload);
      return newState;

    case REGISTER_FAILURE:
      newState.error = Error.fromJson(action.payload);
      newState.loading = false;
      newState.registered= null;
      return newState;

    case REGISTER_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.registered = null;
      }
      return newState;

    default:
      return newState;
  }
}