
import 'package:wait4me/models/viewprofile/viewprofile_model.dart';

class ViewprofileState {
  bool? loading;
  dynamic error;
  ViewProfile? viewprofile;


  ViewprofileState ({
    this.loading,
    this.error,
    required this.viewprofile,

  });
  factory ViewprofileState .initial() => ViewprofileState (
    loading: false,
    error: null,
    viewprofile:null,
  );
}