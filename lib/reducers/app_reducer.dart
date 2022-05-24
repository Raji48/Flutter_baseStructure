import 'package:wait4me/actions/changePassword_action.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/reducers/addservicerate_reducer.dart';
import 'package:wait4me/reducers/changePassword_reducer.dart';
import 'package:wait4me/reducers/choosetask_reducer.dart';
import 'package:wait4me/reducers/createfeedback_reducer.dart';
import 'package:wait4me/reducers/editprofile_reducer.dart';
import 'package:wait4me/reducers/forgetPassword_reducer.dart';
import 'package:wait4me/reducers/getreview_reducer.dart';
import 'package:wait4me/reducers/login_reducer.dart';
import 'package:wait4me/reducers/notification_reducer.dart';
import 'package:wait4me/reducers/register_reducer.dart';
import 'package:wait4me/reducers/roleselect_reducer.dart';
import 'package:wait4me/reducers/sendrequest_reducer.dart';
import 'package:wait4me/reducers/sendrequestprofile_reducer.dart';
import 'package:wait4me/reducers/viewprofile_reducer.dart';
import 'package:wait4me/reducers/stripeaccount_reducer.dart';
import 'package:wait4me/reducers/testjob_reducer.dart';
import 'package:wait4me/reducers/viewrequest_reducer.dart';
import 'package:wait4me/reducers/viewservicerequest_reducer.dart';

import 'getwaiter_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    register: registerReducer(state.register, action),
    editprofile: editprofileReducer(state.editprofile, action),
    viewprofile: viewprofileReducer(state.viewprofile, action),
    roleselect: roleselectReducer(state.roleselect, action),
    login: loginReducer(state.login, action),
    changePasswordState: ChangePasswordReducer(state.changePasswordState, action),
    forgetPasswordState: ForgetPasswordReducer(state.forgetPasswordState, action),
    addServicerateState: AddServicerateReducer(state.addServicerateState, action),
    stripeaccount: stripeaccountReducer(state.stripeaccount, action),
    viewrequest: viewrequestReducer(state.viewrequest, action),
    createfeedback: createfeedbackReducer(state.createfeedback, action),
    getreview: getreviewReducer(state.getreview, action),
    notification: notificationReducer(state.notification, action),
    testjob: testjobReducer(state.testjob, action),
      getWaiterState: GetWaiterReducer(state.getWaiterState, action),
      sendRequestProfileState: SendRequestProfileReducer(state.sendRequestProfileState, action),
      sendRequestState: SendRequestReducer(state.sendRequestState, action),
      chooseTaskState: ChooseTaskReducer(state.chooseTaskState, action),
      viewServiceRequestState: ViewServiceRequestReducer(state.viewServiceRequestState, action)
  );
}
