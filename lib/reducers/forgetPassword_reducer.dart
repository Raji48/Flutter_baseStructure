import 'package:wait4me/models/forgetpassword/forgetPassword_model.dart';
import 'package:wait4me/models/forgetpassword/forgetPassword_state.dart';
import 'package:wait4me/services/index.dart';

ForgetPasswordState ForgetPasswordReducer(ForgetPasswordState state, dynamic action) {
  ForgetPasswordState newState = state;

  switch (action.type) {
    case FORGETPASSWORD_REQUEST:
      newState.loading = true;
      newState.success = null;
      newState.error = null;
      return newState;

    case FORGETPASSWORD_SUCCESS:
      newState.loading = false;
      newState.success = ForgetPasswordModel.fromJson(action.payload);
      newState.error = null;
      return newState;

    case FORGETPASSWORD_FAILURE:
      newState.loading = false;
      newState.success = null;
      newState.error = action.error;
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
