import 'package:flutter/cupertino.dart';
import 'package:wait4me/models/addservicerate/addServicerate_state.dart';
import 'package:wait4me/models/changepassword/changePassword_state.dart';
import 'package:wait4me/models/createfeedback/createfeedback_state.dart';
import 'package:wait4me/models/editprofle/editprofile_state.dart';
import 'package:wait4me/models/forgetpassword/forgetPassword_state.dart';
import 'package:wait4me/models/getreviews/getreviews_state.dart';
import 'package:wait4me/models/getwaiter/getwaiter_state.dart';
import 'package:wait4me/models/login/login_state.dart';
import 'package:wait4me/models/notifications/notification_state.dart';
import 'package:wait4me/models/register/register_state.dart';
import 'package:wait4me/models/roleselect/roleselect_state.dart';
import 'package:wait4me/models/sendrequest/sendrequest_state.dart';
import 'package:wait4me/models/viewprofile/viewprofile_state.dart';
import 'package:wait4me/models/stripeaccount/stripeaccount_state.dart';
import 'package:wait4me/models/testjob/testjob_state.dart';
import 'package:wait4me/models/viewrequests/viewrequest_state.dart';
import 'package:wait4me/models/viewservicerequest/viewservicerequest_state.dart';

import 'choosetask/choosetask_state.dart';
import 'viewprofile/sendrequestprofile_state.dart';

@immutable
class AppState {
  final RegisterState register;
  final EditprofileState editprofile;
  final ViewprofileState viewprofile;
  final RoleselectState roleselect;
  final LoginState login;
  final ChangePasswordState changePasswordState;
  final ForgetPasswordState forgetPasswordState;
  final AddServicerateState addServicerateState;
  final StripeAccountState stripeaccount;
  final ViewRequestState viewrequest;
  final CreateFeedbackState createfeedback;
  final GetReviewState getreview;
  final NotificationState notification;
  final TestjobState testjob;
  final GetWaiterState getWaiterState;
  final SendRequestProfileState sendRequestProfileState;
  final SendRequestState sendRequestState;
  final ChooseTaskState chooseTaskState;
  final ViewServiceRequestState viewServiceRequestState;

  AppState({
    required this.register,
    required this.editprofile,
    required this.viewprofile,
    required this.roleselect,
    required this.login,
    required this.changePasswordState,
    required this.forgetPasswordState,
    required this.addServicerateState,
    required this.stripeaccount,
    required this.viewrequest,
    required this.createfeedback,
    required this.getreview,
    required this.notification,
    required this.testjob,
    required this.getWaiterState,
    required this.sendRequestProfileState,
    required this.sendRequestState,
    required this.chooseTaskState,
    required this.viewServiceRequestState
  });
  factory AppState.initial() => AppState(
    register: RegisterState.initial(),
    editprofile: EditprofileState.initial(),
    viewprofile: ViewprofileState.initial(),
    roleselect:  RoleselectState.initial(),
    changePasswordState: ChangePasswordState.initial(),
    login: LoginState.initial(),
    forgetPasswordState: ForgetPasswordState.initial(),
    addServicerateState: AddServicerateState.initial(),
    stripeaccount: StripeAccountState.initial(),
    viewrequest: ViewRequestState.initial(),
    createfeedback: CreateFeedbackState.initial(),
    getreview: GetReviewState.initial(),
    notification: NotificationState.initial(),
    testjob: TestjobState.initial(),
      getWaiterState: GetWaiterState.initial(),
      sendRequestProfileState: SendRequestProfileState.initial(),
      sendRequestState: SendRequestState.initial(),
      chooseTaskState: ChooseTaskState.initial(),
      viewServiceRequestState: ViewServiceRequestState.initial()
  );

  AppState copyWith({
    required RegisterState? register,
    required EditprofileState? editprofile,
    required ViewprofileState? viewprofile,
    required RoleselectState? roleselect,
    required LoginState? login,
    required ChangePasswordState? changePasswordState,
    required ForgetPasswordState? forgetPasswordState,
    required AddServicerateState? addServicerateState,
    required StripeAccountState? stripeaccount,
    required ViewRequestState? viewrequest,
    required CreateFeedbackState? createfeedback,
    required GetReviewState? getreview,
    required NotificationState? notification,
    required TestjobState? testjob,
    required GetWaiterState? getWaiterState,
    required SendRequestProfileState? sendRequestProfileState,
    required SendRequestState? sendRequestState,
    required ChooseTaskState? chooseTaskState,
    required ViewServiceRequestState? viewServiceRequestState,
  }) {
    return AppState(
      register: register?? this.register,
      editprofile: editprofile?? this.editprofile,
      viewprofile: viewprofile?? this.viewprofile,
      roleselect: roleselect?? this.roleselect,
      login: login ?? this.login,
      changePasswordState: changePasswordState ?? this.changePasswordState,
      forgetPasswordState: forgetPasswordState ?? this.forgetPasswordState,
      addServicerateState: addServicerateState ?? this.addServicerateState,
      stripeaccount: stripeaccount?? this.stripeaccount,
      viewrequest: viewrequest?? this.viewrequest,
      createfeedback: createfeedback?? this.createfeedback,
      getreview: getreview?? this.getreview,
      notification: notification?? this.notification,
      testjob: testjob?? this.testjob,
      getWaiterState: getWaiterState ?? this.getWaiterState,
      sendRequestProfileState: sendRequestProfileState ?? this.sendRequestProfileState,
      sendRequestState: sendRequestState ?? this.sendRequestState,
      chooseTaskState: chooseTaskState ?? this.chooseTaskState,
      viewServiceRequestState: viewServiceRequestState ?? this.viewServiceRequestState,
    );
  }
}


