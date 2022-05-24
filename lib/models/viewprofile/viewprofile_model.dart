class ViewProfile {
  ViewProfile({
    required this.success,
  });
  late final Success success;

  ViewProfile.fromJson(Map<String, dynamic> json){
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
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.gender,
    required this.location,
    required this.about,
    required this.aftPerHour,
    required this.comPerHour,
    required this.evePerHour,
    required this.morPerHour,
    required this.imageUrl,
    required this.isCommon,
    required this.rating,
    required this.revCount,
  });
  late final String id;
  late final String firstName;
  late final String lastName;
  late final String phoneNumber;
  late final String email;
  late final String gender;
  late final String location;
  late final String about;
  late final String? aftPerHour;
  late final String? comPerHour;
  late final String? evePerHour;
  late final String? morPerHour;
  late final String imageUrl;
  late final String? isCommon;
  late final double rating;
  late final int revCount;

  Success.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    gender = json['gender'];
    location = json['location'];
    about = json['about'];
    aftPerHour = json['aftPerHour'];
    comPerHour = json['comPerHour'];
    evePerHour = json['evePerHour'];
    morPerHour = json['morPerHour'];
    imageUrl = json['imageUrl'];
    isCommon = json['isCommon'];
    rating = json['rating'];
    revCount = json['revCount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['firstName'] = firstName;
    _data['lastName'] = lastName;
    _data['phoneNumber'] = phoneNumber;
    _data['email'] = email;
    _data['gender'] = gender;
    _data['location'] = location;
    _data['about'] = about;
    _data['aftPerHour'] = aftPerHour;
    _data['comPerHour'] = comPerHour;
    _data['evePerHour'] = evePerHour;
    _data['morPerHour'] = morPerHour;
    _data['imageUrl'] = imageUrl;
    _data['isCommon'] = isCommon;
    _data['rating'] = rating;
    _data['revCount'] = revCount;
    return _data;
  }
}


