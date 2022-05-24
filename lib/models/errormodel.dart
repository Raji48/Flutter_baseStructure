
class Error {
  Error({
    required this.error,
  });

  late final String error;

  Error.fromJson(Map<String, dynamic> json){
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['error'] = error;
    return _data;
  }
}