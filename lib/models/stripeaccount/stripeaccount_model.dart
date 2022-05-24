class StripeAccountModel {
  StripeAccountModel({
    required this.success,
  });
  late final Success success;

  StripeAccountModel.fromJson(Map<String, dynamic> json){
    success = Success.fromJson(json['success']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success.toJson();
    return _data;
  }
}

class Success {
  Success({
    required this.object,
    required this.created,
    required this.expiresAt,
    required this.url,
  });
  late final String object;
  late final int created;
  late final int expiresAt;
  late final String url;

  Success.fromJson(Map<String, dynamic> json){
    object = json['object'];
    created = json['created'];
    expiresAt = json['expires_at'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['object'] = object;
    _data['created'] = created;
    _data['expires_at'] = expiresAt;
    _data['url'] = url;
    return _data;
  }
}