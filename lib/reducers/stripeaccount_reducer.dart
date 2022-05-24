
import 'package:wait4me/models/stripeaccount/stripeaccount_model.dart';
import 'package:wait4me/models/stripeaccount/stripeaccount_state.dart';
import 'package:wait4me/services/index.dart';

StripeAccountState stripeaccountReducer(StripeAccountState state,dynamic action){
  StripeAccountState newState = state;

  switch (action.type) {

    case STRIPEACCOUNT_REQUEST:
      newState.error = null;
      newState.loading = true;
      newState.stripeaccount = null;
      return newState;

    case STRIPEACCOUNT_SUCCESS:
      newState.error = null;
      newState.loading = false;
      newState.stripeaccount =  StripeAccountModel.fromJson(action.payload);
      return newState;

    case STRIPEACCOUNT_FAILURE:
      newState.error = action.error;
      newState.loading = false;
      newState.stripeaccount = null;
      return newState;

    case STRIPEACCOUNT_CLEAR_PROPS:
      if(action.payload == "true"){
        newState.error = null;
        newState.loading = false;
        newState.stripeaccount = null;
      }
      return newState;

    default:
      return newState;
  }
}