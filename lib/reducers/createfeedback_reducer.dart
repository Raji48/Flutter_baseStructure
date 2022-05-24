
import 'package:wait4me/models/createfeedback/createfeedback_model.dart';
import 'package:wait4me/models/createfeedback/createfeedback_state.dart';
import 'package:wait4me/services/index.dart';

CreateFeedbackState createfeedbackReducer(CreateFeedbackState state,dynamic action){
  CreateFeedbackState newState = state;

  switch (action.type) {

    case CREATEFEEDBACK_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.createfeedback = null;
      return newState;

    case CREATEFEEDBACK_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.createfeedback =  CreateFeedbackModel.fromJson(action.payload);
      return newState;

    case CREATEFEEDBACK_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.createfeedback = null;
      return newState;

    case CREATEFEEDBACK_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.createfeedback = null;
      }
      return newState;

    default:
      return newState;
  }
}