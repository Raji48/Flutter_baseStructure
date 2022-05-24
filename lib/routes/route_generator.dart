
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:wait4me/res/index.dart';
import 'package:wait4me/screens/ForgetPassword.dart';
import 'package:wait4me/screens/Location.dart';
import 'package:wait4me/screens/Login.dart';
import 'package:wait4me/screens/Register.dart';
import 'package:wait4me/screens/SplashScreen.dart';
import 'package:wait4me/screens/addServicerate.dart';
import 'package:wait4me/screens/changePassword.dart';
import 'package:wait4me/screens/chooseTask.dart';
import 'package:wait4me/screens/editProfile.dart';
import 'package:wait4me/screens/feedback.dart';
import 'package:wait4me/screens/notifications.dart';
import 'package:wait4me/screens/paymentScreen.dart';
import 'package:wait4me/screens/profile.dart';
import 'package:wait4me/screens/roleselect.dart';
import 'package:wait4me/screens/sendrequest.dart';
import 'package:wait4me/screens/stripeaccount/createstripeAccount.dart';
import 'package:wait4me/screens/stripeaccount/editstripeAccount.dart';
import 'package:wait4me/screens/testJob.dart';
import 'package:wait4me/screens/viewrequests.dart';
import 'package:wait4me/screens/waiteracceptRreject.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case register_navigation:
        return MaterialPageRoute(builder: (context) => Register());
      case splashscreen_navigation:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case login_navigation:
        return MaterialPageRoute(builder: (context) => Login());
      case forgetpassword_navigation:
        return MaterialPageRoute(builder: (context) => ForgetPassword());
      case location_navigation:
        return MaterialPageRoute(builder: (context) => Location());
      case roleselect_navigation:
        return MaterialPageRoute(builder: (context) => RoleSelect());
      case editprofile_navigation:
        return MaterialPageRoute(builder: (context) => EditProfile());
      case profile_navigation:
        return MaterialPageRoute(builder: (context) => ProfileScreen());
      case changepassword_navigation:
        return MaterialPageRoute(builder: (context) => ChangePassword());
      case choosetask_navigation:
        return MaterialPageRoute(builder: (context) => ChooseTask());
      case addservicerate_navigation:
        return MaterialPageRoute(builder: (context) => AddServicerate());
      case payment_navigation:
        return MaterialPageRoute(builder: (context) => PaymentScreen());
      case stripaccount_navigation:
        return MaterialPageRoute(builder: (context) => StripAccount());
      case createstripeaccount_navigation:
        return MaterialPageRoute(builder: (context) => CreateStripeAccount());
      case testjob_navigation:
        return MaterialPageRoute(builder: (context) => TestJob());
      case myrequests_navigation:
        return MaterialPageRoute(builder: (context) => Myrequests());
      case createfeedback_navigation:
        return MaterialPageRoute(builder: (context) => CreateFeedback());
      case notification_navigation:
        return MaterialPageRoute(builder: (context) => Notifications());
      case sendrequest_navigation:
        return MaterialPageRoute(builder: (context) => SendRequest());
      case waiteracceptrreject_navigation:
        return MaterialPageRoute(builder: (context) => WaiterAcceptORReject());

      default:
      // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}