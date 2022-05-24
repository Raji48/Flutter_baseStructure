class GetReviewModel {
  final Success? success;

  GetReviewModel({
    this.success,
  });

  GetReviewModel.fromJson(Map<String, dynamic> json)
      : success = (json['success'] as Map<String,dynamic>?) != null ? Success.fromJson(json['success'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'success' : success?.toJson()
  };
}

class Success {
  final int? count;
  final List<Feedbacks>? feedbacks;

  Success({
    this.count,
    this.feedbacks,
  });

  Success.fromJson(Map<String, dynamic> json)
      : count = json['count'] as int?,
        feedbacks = (json['feedbacks'] as List?)?.map((dynamic e) => Feedbacks.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'count' : count,
    'feedbacks' : feedbacks?.map((e) => e.toJson()).toList()
  };
}

class Feedbacks {
  final String? id;
  final String? receiverId;
  final SenderId? senderId;
  final String? serviceId;
  final int? rating;
  final String? feedback;
  final int? v;
  final String? updateAt;
  final String? createAt;

  Feedbacks({
    this.id,
    this.receiverId,
    this.senderId,
    this.serviceId,
    this.rating,
    this.feedback,
    this.v,
    this.updateAt,
    this.createAt,
  });

  Feedbacks.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        receiverId = json['receiverId'] as String?,
        senderId = (json['senderId'] as Map<String,dynamic>?) != null ? SenderId.fromJson(json['senderId'] as Map<String,dynamic>) : null,
        serviceId = json['serviceId'] as String?,
        rating = json['rating'] as int?,
        feedback = json['feedback'] as String?,
        v = json['__v'] as int?,
        updateAt = json['updateAt'] as String?,
        createAt = json['createAt'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'receiverId' : receiverId,
    'senderId' : senderId?.toJson(),
    'serviceId' : serviceId,
    'rating' : rating,
    'feedback' : feedback,
    '__v' : v,
    'updateAt' : updateAt,
    'createAt' : createAt
  };
}

class SenderId {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? imageUrl;

  SenderId({
    this.id,
    this.firstName,
    this.lastName,
    this.imageUrl,
  });

  SenderId.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        firstName = json['firstName'] as String?,
        lastName = json['lastName'] as String?,
        imageUrl = json['imageUrl'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'firstName' : firstName,
    'lastName' : lastName,
    'imageUrl' : imageUrl
  };
}