class ViewServiceRequestModel {
  ViewServiceRequestModel({
    required this.success,
  });
  late final Success success;

  ViewServiceRequestModel.fromJson(Map<String, dynamic> json){
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
    required this.hours,
    required this.title,
    required this.descriptionDetail,
    required this.endDate,
    required this.endTime,
    required this.location,
    required this.startDate,
    required this.startTime,
    required this.V,
    required this.oriImages,
    required this.images,
    required this.request,
    required this.transactions,
  });
  late final String id;
  late final String hours;
  late final String title;
  late final String descriptionDetail;
  late final String endDate;
  late final String endTime;
  late final String location;
  late final String startDate;
  late final String startTime;
  late final int V;
  late final List<dynamic> oriImages;
  late final List<dynamic> images;
  late final Request request;
  late final List<Transactions> transactions;

  Success.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    hours = json['hours'];
    title = json['title'];
    descriptionDetail = json['descriptionDetail'];
    endDate = json['endDate'];
    endTime = json['endTime'];
    location = json['location'];
    startDate = json['startDate'];
    startTime = json['startTime'];
    V = json['__v'];
    oriImages = List.castFrom<dynamic, dynamic>(json['oriImages']);
    images = List.castFrom<dynamic, dynamic>(json['images']);
    request = Request.fromJson(json['request']);
    transactions = List.from(json['transactions']).map((e)=>Transactions.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['hours'] = hours;
    _data['title'] = title;
    _data['descriptionDetail'] = descriptionDetail;
    _data['endDate'] = endDate;
    _data['endTime'] = endTime;
    _data['location'] = location;
    _data['startDate'] = startDate;
    _data['startTime'] = startTime;
    _data['__v'] = V;
    _data['oriImages'] = oriImages;
    _data['images'] = images;
    _data['request'] = request.toJson();
    _data['transactions'] = transactions.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Request {
  Request({
    required this.id,
    required this.waiterId,
    required this.cusId,
    required this.serviceId,
    required this.V,
    required this.updateAt,
    required this.createAt,
    required this.changeRequest,
    required this.isResolve,
    required this.isRejected,
    required this.isApproved,
    required this.isCompleted,
    required this.waiterFeedBack,
    required this.customerFeedBack,
    required this.watRead,
    required this.cusRead,
    required this.watDelete,
    required this.cusDelete,
    required this.status,
  });
  late final String id;
  late final String waiterId;
  late final String cusId;
  late final String serviceId;
  late final int V;
  late final String updateAt;
  late final String createAt;
  late final bool changeRequest;
  late final bool isResolve;
  late final bool isRejected;
  late final bool isApproved;
  late final bool isCompleted;
  late final bool waiterFeedBack;
  late final bool customerFeedBack;
  late final bool watRead;
  late final bool cusRead;
  late final bool watDelete;
  late final bool cusDelete;
  late final String status;

  Request.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    waiterId = json['waiterId'];
    cusId = json['cusId'];
    serviceId = json['serviceId'];
    V = json['__v'];
    updateAt = json['updateAt'];
    createAt = json['createAt'];
    changeRequest = json['changeRequest'];
    isResolve = json['isResolve'];
    isRejected = json['isRejected'];
    isApproved = json['isApproved'];
    isCompleted = json['isCompleted'];
    waiterFeedBack = json['waiterFeedBack'];
    customerFeedBack = json['customerFeedBack'];
    watRead = json['watRead'];
    cusRead = json['cusRead'];
    watDelete = json['watDelete'];
    cusDelete = json['cusDelete'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['waiterId'] = waiterId;
    _data['cusId'] = cusId;
    _data['serviceId'] = serviceId;
    _data['__v'] = V;
    _data['updateAt'] = updateAt;
    _data['createAt'] = createAt;
    _data['changeRequest'] = changeRequest;
    _data['isResolve'] = isResolve;
    _data['isRejected'] = isRejected;
    _data['isApproved'] = isApproved;
    _data['isCompleted'] = isCompleted;
    _data['waiterFeedBack'] = waiterFeedBack;
    _data['customerFeedBack'] = customerFeedBack;
    _data['watRead'] = watRead;
    _data['cusRead'] = cusRead;
    _data['watDelete'] = watDelete;
    _data['cusDelete'] = cusDelete;
    _data['status'] = status;
    return _data;
  }
}

class Transactions {
  Transactions({
    required this.id,
    required this.serviceId,
    required this.amount,
    required this.transferId,
    required this.V,
    required this.updateAt,
    required this.createAt,
  });
  late final String id;
  late final String serviceId;
  late final String amount;
  late final String transferId;
  late final int V;
  late final String updateAt;
  late final String createAt;

  Transactions.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    serviceId = json['serviceId'];
    amount = json['amount'];
    transferId = json['transferId'];
    V = json['__v'];
    updateAt = json['updateAt'];
    createAt = json['createAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['serviceId'] = serviceId;
    _data['amount'] = amount;
    _data['transferId'] = transferId;
    _data['__v'] = V;
    _data['updateAt'] = updateAt;
    _data['createAt'] = createAt;
    return _data;
  }
}