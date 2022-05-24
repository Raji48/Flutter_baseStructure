import 'package:wait4me/models/changepassword/changePassword_model.dart';
import 'package:wait4me/models/changepassword/changePassword_state.dart';
import 'package:wait4me/services/index.dart';

ChangePasswordState ChangePasswordReducer(ChangePasswordState state, dynamic action) {
  ChangePasswordState newState = state;

  switch (action.type) {
    case CHANGEPASSWORD_REQUEST:
      newState.loading = true;
      newState.success = null;
      newState.error = null;
      return newState;

    case CHANGEPASSWORD_SUCCESS:
      newState.loading = false;
      newState.success = ChangePasswordModel.fromJson(action.payload);
      newState.error = null;
      return newState;

    case CHANGEPASSWORD_FAILURE:
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
