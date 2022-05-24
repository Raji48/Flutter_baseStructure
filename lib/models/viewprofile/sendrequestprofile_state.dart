import 'package:wait4me/models/viewprofile/viewprofile_model.dart';

class SendRequestProfileState {
  bool? loading;
  dynamic error;
  ViewProfile? viewprofile;


  SendRequestProfileState ({
    this.loading,
    this.error,
    required this.viewprofile,

  });
  factory SendRequestProfileState .initial() => SendRequestProfileState (
    loading: false,
    error: null,
    viewprofile:null,
  );
}