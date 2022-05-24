import 'package:wait4me/models/choosetask/choosetask_model.dart';
import 'package:wait4me/models/choosetask/choosetask_state.dart';
import 'package:wait4me/services/index.dart';

ChooseTaskState ChooseTaskReducer(ChooseTaskState state, dynamic action) {
  ChooseTaskState newState = state;

  switch (action.type) {
    case CHOOSETASK_REQUEST:
      newState.loading = true;
      newState.success = null;
      newState.error = null;
      return newState;

    case CHOOSETASK_SUCCESS:
      newState.loading = false;
      newState.success = ChooseTaskModel.fromJson(action.payload);
      newState.error = null;
      return newState;

    case CHOOSETASK_FAILURE:
      newState.loading = false;
      newState.success = null;
      newState.error =  state.error;
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
