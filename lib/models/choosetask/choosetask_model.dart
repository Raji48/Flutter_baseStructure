class ChooseTaskModel {
  ChooseTaskModel({
    required this.success,
  });
  late final List<Success> success;

  ChooseTaskModel.fromJson(Map<String, dynamic> json){
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
  late final WaiterId waiterId;
  late final String cusId;
  late final ServiceId serviceId;
  late final int? V;
  late final String? updateAt;
  late final String createAt;
  late final bool? changeRequest;
  late final bool? isResolve;
  late final bool? isRejected;
  late final bool? isApproved;
  late final bool? isCompleted;
  late final bool? waiterFeedBack;
  late final bool customerFeedBack;
  late final bool watRead;
  late final bool cusRead;
  late final bool watDelete;
  late final bool cusDelete;
  late final String? status;

  Success.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    waiterId = WaiterId.fromJson(json['waiterId']);
    cusId = json['cusId'];
    serviceId = ServiceId.fromJson(json['serviceId']);
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
    _data['waiterId'] = waiterId.toJson();
    _data['cusId'] = cusId;
    _data['serviceId'] = serviceId.toJson();
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

class WaiterId {
  WaiterId({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    this.imageUrl,
  });
  late final String id;
  late final String firstName;
  late final String lastName;
  late final String phoneNumber;
  late final String? imageUrl;

  WaiterId.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phoneNumber = json['phoneNumber'];
    imageUrl = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['firstName'] = firstName;
    _data['lastName'] = lastName;
    _data['phoneNumber'] = phoneNumber;
    _data['imageUrl'] = imageUrl;
    return _data;
  }
}

class ServiceId {
  ServiceId({
    required this.id,
    required this.title,
    required this.descriptionDetail,
  });
  late final String id;
  late final String title;
  late final String descriptionDetail;

  ServiceId.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    title = json['title'];
    descriptionDetail = json['descriptionDetail'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['title'] = title;
    _data['descriptionDetail'] = descriptionDetail;
    return _data;
  }
}