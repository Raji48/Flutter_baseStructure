import 'index.dart';

const REGISTER = "/user";
const EDITPROFILE = "/user/edit-profile";
String VIEWPROFILE = "/user/view-profile?userId="+userid;
String SENDREQUESTPROFILE = "/user/view-profile?userId="+sendrequestuserid;
String ROLESELECT = "/auth/select-role?userId="+userid+"&roleType=Customer";
String LOGIN_API = "/auth/login";
String CHANGEPASSWORD_API = "/auth/change-password";
String FORGETPASSWORD_API = "/auth/forgot-password?email=" + forgetpasswordemail;
String ADDSERVICERATE_API = "/user/updated-rate";
String STRIPEACCOUNT = "/payment/connect?userId="+userid;
String VIEWREQUEST =  "/service";
String CREATEFEEDBACK =  "/feedback";
String GETREVIEW =   "/feedback?id="+userid+"&currentPage=1&maxLimit=5&star=5";
String NOTIFICATION =  "/service/notifications";
String TESTJOB =  "/service/get-request?id="+userid;
String GETWAITER_API = "/location/get-waiter?lon="+longitude+"&lat="+latitude+"&distance="+distance;
String SENDREQUEST_API = "/service";
String VIEWSERVICEREQUEST = "/service/get-request?id=6124ddf6e12d4eb49fea24bf";


