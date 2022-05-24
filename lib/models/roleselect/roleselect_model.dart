
class RoleSelectModel {
  RoleSelectModel({
    required this.success,
  });
  late final Sucess success;

  RoleSelectModel.fromJson(Map<String, dynamic> json){
    success = Sucess.fromJson(json['sucess']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sucess'] = success.toJson();
    return _data;
  }
}

class Sucess {
  Sucess({
    required this.role,
    required this.waiterAccountLinked,
    required this.token,
  });
  late final String role;
  late final bool waiterAccountLinked;
  late final String token;

  Sucess.fromJson(Map<String, dynamic> json){
    role = json['role'];
    waiterAccountLinked = json['waiterAccountLinked'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['role'] = role;
    _data['waiterAccountLinked'] = waiterAccountLinked;
    _data['token'] = token;
    return _data;
  }
}