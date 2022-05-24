class ForgetPasswordModel {
  ForgetPasswordModel({
    required this.sucess,
  });
  late final String sucess;

  ForgetPasswordModel.fromJson(Map<String, dynamic> json) {
    sucess = json['sucess'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sucess'] = sucess;
    return _data;
  }
}
