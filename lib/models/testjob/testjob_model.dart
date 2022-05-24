class TestjobModel {
  final Success? success;

  TestjobModel({
    this.success,
  });

  TestjobModel.fromJson(Map<String, dynamic> json)
      : success = (json['success'] as Map<String,dynamic>?) != null ? Success.fromJson(json['success'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'success' : success?.toJson()
  };
}

class Success {
  final String? id;
  final String? hours;
  final String? descriptionDetail;
  final String? endDate;
  final String? endTime;
  final String? location;
  final String? startDate;
  final String? startTime;
  final String? title;
  final int? v;
  final List<dynamic>? oriImages;
  final List<String>? images;
  final Request? request;
  final List<dynamic>? transactions;

  Success({
    this.id,
    this.hours,
    this.descriptionDetail,
    this.endDate,
    this.endTime,
    this.location,
    this.startDate,
    this.startTime,
    this.title,
    this.v,
    this.oriImages,
    this.images,
    this.request,
    this.transactions,
  });

  Success.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        hours = json['hours'] as String?,
        descriptionDetail = json['descriptionDetail'] as String?,
        endDate = json['endDate'] as String?,
        endTime = json['endTime'] as String?,
        location = json['location'] as String?,
        startDate = json['startDate'] as String?,
        startTime = json['startTime'] as String?,
        title = json['title'] as String?,
        v = json['__v'] as int?,
        oriImages = json['oriImages'] as List?,
        images = (json['images'] as List?)?.map((dynamic e) => e as String).toList(),
        request = (json['request'] as Map<String,dynamic>?) != null ? Request.fromJson(json['request'] as Map<String,dynamic>) : null,
        transactions = json['transactions'] as List?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'hours' : hours,
    'descriptionDetail' : descriptionDetail,
    'endDate' : endDate,
    'endTime' : endTime,
    'location' : location,
    'startDate' : startDate,
    'startTime' : startTime,
    'title' : title,
    '__v' : v,
    'oriImages' : oriImages,
    'images' : images,
    'request' : request?.toJson(),
    'transactions' : transactions
  };
}

class Request {
  final String? id;
  final String? waiterId;
  final String? cusId;
  final String? serviceId;
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

  Request({
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

  Request.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        waiterId = json['waiterId'] as String?,
        cusId = json['cusId'] as String?,
        serviceId = json['serviceId'] as String?,
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
    'waiterId' : waiterId,
    'cusId' : cusId,
    'serviceId' : serviceId,
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