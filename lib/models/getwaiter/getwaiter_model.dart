class GetWaiterModel {
  GetWaiterModel({
    required this.success,
  });
  late final List<Success> success;

  GetWaiterModel.fromJson(Map<String, dynamic> json){
    success = List.from(json['success']).map((e)=>Success.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Success {
  Success({
    required this.id,
    required this.userId,
    required this.role,
    required this.V,
    required this.location,
  });
  late final String id;
  late final UserId userId;
  late final String role;
  late final int V;
  late final Location location;

  Success.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    userId = UserId.fromJson(json['userId']);
    role = json['role'];
    V = json['__v'];
    location = Location.fromJson(json['location']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['userId'] = userId.toJson();
    _data['role'] = role;
    _data['__v'] = V;
    _data['location'] = location.toJson();
    return _data;
  }
}

class UserId {
  UserId({
    required this.id,
    required this.imageUrl,
    required this.isAdmin,
    required this.isDeleted,
    required this.isCommon,
  });
  late final String id;
  late final String imageUrl;
  late final bool isAdmin;
  late final bool isDeleted;
  late final String isCommon;

  UserId.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    imageUrl = json['imageUrl'];
    isAdmin = json['isAdmin'];
    isDeleted = json['isDeleted'];
    isCommon = json['isCommon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['imageUrl'] = imageUrl;
    _data['isAdmin'] = isAdmin;
    _data['isDeleted'] = isDeleted;
    _data['isCommon'] = isCommon;
    return _data;
  }
}

class Location {
  Location({
    required this.type,
    required this.coordinates,
  });
  late final String type;
  late final List<double> coordinates;

  Location.fromJson(Map<String, dynamic> json){
    type = json['type'];
    coordinates = List.castFrom<dynamic, double>(json['coordinates']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['coordinates'] = coordinates;
    return _data;
  }
}