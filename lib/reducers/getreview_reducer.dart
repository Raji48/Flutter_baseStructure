
import 'package:wait4me/models/getreviews/getreviews_model.dart';
import 'package:wait4me/models/getreviews/getreviews_state.dart';
import 'package:wait4me/services/index.dart';

GetReviewState getreviewReducer(GetReviewState state,dynamic action){
  GetReviewState newState = state;

  switch (action.type) {

    case GETREVIEW_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.getreview = null;
      return newState;

    case GETREVIEW_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.getreview =  GetReviewModel.fromJson(action.payload);
      return newState;

    case GETREVIEW_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.getreview = null;
      return newState;

    case GETREVIEW_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.getreview = null;
      }
      return newState;

    default:
      return newState;
  }
}