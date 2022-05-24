
import 'package:wait4me/models/testjob/testjob_model.dart';
import 'package:wait4me/models/testjob/testjob_state.dart';
import 'package:wait4me/services/index.dart';

TestjobState testjobReducer(TestjobState state,dynamic action){
  TestjobState newState = state;

  switch (action.type) {

    case TESTJOB_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.testjob = null;
      return newState;

    case TESTJOB_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.testjob =  TestjobModel.fromJson(action.payload);
      return newState;

    case TESTJOB_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.testjob = null;
      return newState;

    case TESTJOB_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.testjob = null;
      }
      return newState;

    default:
      return newState;
  }
}