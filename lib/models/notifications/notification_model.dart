class NotificationModel {
  final List<Success>? success;

  NotificationModel({
    this.success,
  });

  NotificationModel.fromJson(Map<String, dynamic> json)
      : success = (json['success'] as List?)?.map((dynamic e) => Success.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'success' : success?.map((e) => e.toJson()).toList()
  };
}

class Success {
  final String? id;
  final String? userId;
  final SenderId? senderId;
  final Data? data;
  final int? v;
  final String? createAt;
  final bool? isRead;
  final String? message;
  final bool? isPayment;

  Success({
    this.id,
    this.userId,
    this.senderId,
    this.data,
    this.v,
    this.createAt,
    this.isRead,
    this.message,
    this.isPayment,
  });

  Success.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        userId = json['userId'] as String?,
        senderId = (json['senderId'] as Map<String,dynamic>?) != null ? SenderId.fromJson(json['senderId'] as Map<String,dynamic>) : null,
        data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null,
        v = json['__v'] as int?,
        createAt = json['createAt'] as String?,
        isRead = json['isRead'] as bool?,
        message = json['message'] as String?,
        isPayment = json['isPayment'] as bool?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'userId' : userId,
    'senderId' : senderId?.toJson(),
    'data' : data?.toJson(),
    '__v' : v,
    'createAt' : createAt,
    'isRead' : isRead,
    'message' : message,
    'isPayment' : isPayment
  };
}

class SenderId {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? phoneNumber;
  final String? imageUrl;

  SenderId({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.imageUrl,
  });

  SenderId.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        firstName = json['firstName'] as String?,
        lastName = json['lastName'] as String?,
        phoneNumber = json['phoneNumber'] as String?,
        imageUrl = json['imageUrl'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'firstName' : firstName,
    'lastName' : lastName,
    'phoneNumber' : phoneNumber,
    'imageUrl' : imageUrl
  };
}

class Data {
  final String? role;
  final bool? isCustomer;
  final ServiceRequest? serviceRequest;

  Data({
    this.role,
    this.isCustomer,
    this.serviceRequest,
  });

  Data.fromJson(Map<String, dynamic> json)
      : role = json['role'] as String?,
        isCustomer = json['isCustomer'] as bool?,
        serviceRequest = (json['serviceRequest'] as Map<String,dynamic>?) != null ? ServiceRequest.fromJson(json['serviceRequest'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'role' : role,
    'isCustomer' : isCustomer,
    'serviceRequest' : serviceRequest?.toJson()
  };
}

class ServiceRequest {
  final String? id;
  final WaiterId? waiterId;
  final String? cusId;
  final ServiceId? serviceId;
  final String? amount;
  final int? v;
  final String? updateAt;
  final String? createAt;
  final bool? changeRequest;
  final bool? isResolve;
  final bool? isRejected;
  final bool? isApproved;
  final bool? isCompleted;
  final bool? waiterFeedBack;
  final bool? customerFeedBack;
  final bool? watRead;
  final bool? cusRead;
  final bool? watDelete;
  final bool? cusDelete;
  final String? status;

  ServiceRequest({
    this.id,
    this.waiterId,
    this.cusId,
    this.serviceId,
    this.amount,
    this.v,
    this.updateAt,
    this.createAt,
    this.changeRequest,
    this.isResolve,
    this.isRejected,
    this.isApproved,
    this.isCompleted,
    this.waiterFeedBack,
    this.customerFeedBack,
    this.watRead,
    this.cusRead,
    this.watDelete,
    this.cusDelete,
    this.status,
  });

  ServiceRequest.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        waiterId = (json['waiterId'] as Map<String,dynamic>?) != null ? WaiterId.fromJson(json['waiterId'] as Map<String,dynamic>) : null,
        cusId = json['cusId'] as String?,
        serviceId = (json['serviceId'] as Map<String,dynamic>?) != null ? ServiceId.fromJson(json['serviceId'] as Map<String,dynamic>) : null,
        amount = json['amount'] as String?,
        v = json['__v'] as int?,
        updateAt = json['updateAt'] as String?,
        createAt = json['createAt'] as String?,
        changeRequest = json['changeRequest'] as bool?,
        isResolve = json['isResolve'] as bool?,
        isRejected = json['isRejected'] as bool?,
        isApproved = json['isApproved'] as bool?,
        isCompleted = json['isCompleted'] as bool?,
        waiterFeedBack = json['waiterFeedBack'] as bool?,
        customerFeedBack = json['customerFeedBack'] as bool?,
        watRead = json['watRead'] as bool?,
        cusRead = json['cusRead'] as bool?,
        watDelete = json['watDelete'] as bool?,
        cusDelete = json['cusDelete'] as bool?,
        status = json['status'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'waiterId' : waiterId?.toJson(),
    'cusId' : cusId,
    'serviceId' : serviceId?.toJson(),
    'amount' : amount,
    '__v' : v,
    'updateAt' : updateAt,
    'createAt' : createAt,
    'changeRequest' : changeRequest,
    'isResolve' : isResolve,
    'isRejected' : isRejected,
    'isApproved' : isApproved,
    'isCompleted' : isCompleted,
    'waiterFeedBack' : waiterFeedBack,
    'customerFeedBack' : customerFeedBack,
    'watRead' : watRead,
    'cusRead' : cusRead,
    'watDelete' : watDelete,
    'cusDelete' : cusDelete,
    'status' : status
  };
}

class WaiterId {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? phoneNumber;
  final String? imageUrl;

  WaiterId({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.imageUrl,
  });

  WaiterId.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        firstName = json['firstName'] as String?,
        lastName = json['lastName'] as String?,
        phoneNumber = json['phoneNumber'] as String?,
        imageUrl = json['imageUrl'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'firstName' : firstName,
    'lastName' : lastName,
    'phoneNumber' : phoneNumber,
    'imageUrl' : imageUrl
  };
}

class ServiceId {
  final String? id;
  final String? descriptionDetail;
  final String? title;

  ServiceId({
    this.id,
    this.descriptionDetail,
    this.title,
  });

  ServiceId.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        descriptionDetail = json['descriptionDetail'] as String?,
        title = json['title'] as String?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'descriptionDetail' : descriptionDetail,
    'title' : title
  };
}