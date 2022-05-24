import 'package:wait4me/models/login/login_model.dart';
import 'package:wait4me/models/login/login_state.dart';
import 'package:wait4me/services/index.dart';
import 'package:wait4me/models/errormodel.dart';

LoginState loginReducer(LoginState state, dynamic action) {
  LoginState newState = state;

  switch (action.type) {
    case LOGIN_REQUEST:
      newState.loading = true;
      newState.success = null;
      newState.error = null;
      return newState;

    case LOGIN_SUCCESS:
      newState.loading = false;
      newState.success = Login_Model.fromJson(action.payload);
      newState.error = null;
      return newState;

    case LOGIN_FAILURE:
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
