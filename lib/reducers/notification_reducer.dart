
import 'package:wait4me/models/notifications/notification_model.dart';
import 'package:wait4me/models/notifications/notification_state.dart';
import 'package:wait4me/services/index.dart';

NotificationState notificationReducer(NotificationState state,dynamic action){
  NotificationState newState = state;

  switch (action.type) {

    case NOTIFICATION_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.notification = null;
      return newState;

    case NOTIFICATION_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.notification =  NotificationModel.fromJson(action.payload);
      return newState;

    case NOTIFICATION_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.notification = null;
      return newState;

    case NOTIFICATION_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.notification = null;
      }
      return newState;

    default:
      return newState;
  }
}