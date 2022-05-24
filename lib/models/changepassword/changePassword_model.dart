class ChangePasswordModel {
  ChangePasswordModel({
    required this.sucess,
  });
  late final String sucess;

  ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    sucess = json['sucess'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sucess'] = sucess;
    return _data;
  }
}
