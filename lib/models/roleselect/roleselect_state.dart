
import 'package:wait4me/models/roleselect/roleselect_model.dart';

class RoleselectState {
  bool? loading;
  dynamic error;
  RoleSelectModel? roleselect;


  RoleselectState ({
    this.loading,
    this.error,
    required this.roleselect,

  });
  factory RoleselectState .initial() => RoleselectState (
    loading: false,
    error: null,
    roleselect: null,
  );
}