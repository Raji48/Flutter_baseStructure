class Login_Model {
  Login_Model({
    required this.sucess,
  });
  late final Sucess sucess;

  Login_Model.fromJson(Map<String, dynamic> json) {
    sucess = Sucess.fromJson(json['sucess']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sucess'] = sucess.toJson();
    return _data;
  }
}

class Sucess {
  Sucess({
    required this.userId,
  });
  late final String userId;

  Sucess.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userId'] = userId;
    return _data;
  }
}

