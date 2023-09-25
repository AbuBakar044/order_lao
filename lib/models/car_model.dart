class CarsModel {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  CarsModel(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  CarsModel.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  int? carId;
  int? supplierId;
  String? carName;
  String? carPageUrl;
  int? catId;
  int? modelId;
  int? brandId;
  int? locationId;
  int? year;
  String? carPageTitle;
  String? carPageKeywords;
  String? carPageDescription;
  String? carPageSchema;
  int? price;
  String? mileage;
  int? transmissionId;
  int? colorId;
  int? typeId;
  String? registrationNo;
  String? registrationPic;
  int? driveId;
  int? dayPrice;
  int? weeklyPrice;
  int? monthlyPrice;
  int? monthlyInstallment;
  String? featureImage;
  String? pic1;
  String? pic2;
  String? pic3;
  String? pic4;
  String? pic5;
  String? pic6;
  int? carStatus;
  int? isFeature;
  String? createdAt;
  int? createdBy;
  String? companyName;
  String? companyPageUrl;
  String? companyPhone;
  String? companyWhattsap;
  String? address;
  String? logo;
  String? tradeLicense;
  String? supplierVideoLink;
  String? companyPageTitle;
  String? companyPageKeywords;
  String? companyPageDescription;
  String? companyPageSchema;
  int? leadEmail;
  String? leadExpireDate;
  String? updatedAt;
  String? categoryName;
  String? categoryUrl;
  String? type;
  String? typePageUrl;
  String? brand;
  String? brandPageTitle;
  String? brandPageUrl;
  String? brandPageKeywords;
  String? brandPageDescription;
  String? brandSchema;
  String? brandPic;

  Data(
      {this.carId,
      this.supplierId,
      this.carName,
      this.carPageUrl,
      this.catId,
      this.modelId,
      this.brandId,
      this.locationId,
      this.year,
      this.carPageTitle,
      this.carPageKeywords,
      this.carPageDescription,
      this.carPageSchema,
      this.price,
      this.mileage,
      this.transmissionId,
      this.colorId,
      this.typeId,
      this.registrationNo,
      this.registrationPic,
      this.driveId,
      this.dayPrice,
      this.weeklyPrice,
      this.monthlyPrice,
      this.monthlyInstallment,
      this.featureImage,
      this.pic1,
      this.pic2,
      this.pic3,
      this.pic4,
      this.pic5,
      this.pic6,
      this.carStatus,
      this.isFeature,
      this.createdAt,
      this.createdBy,
      this.companyName,
      this.companyPageUrl,
      this.companyPhone,
      this.companyWhattsap,
      this.address,
      this.logo,
      this.tradeLicense,
      this.supplierVideoLink,
      this.companyPageTitle,
      this.companyPageKeywords,
      this.companyPageDescription,
      this.companyPageSchema,
      this.leadEmail,
      this.leadExpireDate,
      this.updatedAt,
      this.categoryName,
      this.categoryUrl,
      this.type,
      this.typePageUrl,
      this.brand,
      this.brandPageTitle,
      this.brandPageUrl,
      this.brandPageKeywords,
      this.brandPageDescription,
      this.brandSchema,
      this.brandPic});

  Data.fromJson(Map<String, dynamic> json) {
    carId = json['car_id'];
    supplierId = json['supplier_id'];
    carName = json['car_name'];
    carPageUrl = json['car_page_url'];
    catId = json['cat_id'];
    modelId = json['model_id'];
    brandId = json['brand_id'];
    locationId = json['location_id'];
    year = json['year'];
    carPageTitle = json['car_page_title'];
    carPageKeywords = json['car_page_keywords'];
    carPageDescription = json['car_page_description'];
    carPageSchema = json['car_page_schema'];
    price = json['price'];
    mileage = json['mileage'];
    transmissionId = json['transmission_id'];
    colorId = json['color_id'];
    typeId = json['type_id'];
    registrationNo = json['registration_no'];
    registrationPic = json['registration_pic'];
    driveId = json['drive_id'];
    dayPrice = json['day_price'];
    weeklyPrice = json['weekly_price'];
    monthlyPrice = json['monthly_price'];
    monthlyInstallment = json['monthly_installment'];
    featureImage = json['feature_image'];
    pic1 = json['pic_1'];
    pic2 = json['pic_2'];
    pic3 = json['pic_3'];
    pic4 = json['pic_4'];
    pic5 = json['pic_5'];
    pic6 = json['pic_6'];
    carStatus = json['car_status'];
    isFeature = json['is_feature'];
    createdAt = json['created_at'];
    createdBy = json['created_by'];
    companyName = json['company_name'];
    companyPageUrl = json['company_page_url'];
    companyPhone = json['company_phone'];
    companyWhattsap = json['company_whattsap'];
    address = json['address'];
    logo = json['logo'];
    tradeLicense = json['trade_license'];
    supplierVideoLink = json['supplier_video_link'];
    companyPageTitle = json['company_page_title'];
    companyPageKeywords = json['company_page_keywords'];
    companyPageDescription = json['company_page_description'];
    companyPageSchema = json['company_page_schema'];
    leadEmail = json['lead_email'];
    leadExpireDate = json['lead_expire_date'];
    updatedAt = json['updated_at'];
    categoryName = json['category_name'];
    categoryUrl = json['category_url'];
    type = json['type'];
    typePageUrl = json['type_page_url'];
    brand = json['brand'];
    brandPageTitle = json['brand_page_title'];
    brandPageUrl = json['brand_page_url'];
    brandPageKeywords = json['brand_page_keywords'];
    brandPageDescription = json['brand_page_description'];
    brandSchema = json['brand_schema'];
    brandPic = json['brand_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['car_id'] = this.carId;
    data['supplier_id'] = this.supplierId;
    data['car_name'] = this.carName;
    data['car_page_url'] = this.carPageUrl;
    data['cat_id'] = this.catId;
    data['model_id'] = this.modelId;
    data['brand_id'] = this.brandId;
    data['location_id'] = this.locationId;
    data['year'] = this.year;
    data['car_page_title'] = this.carPageTitle;
    data['car_page_keywords'] = this.carPageKeywords;
    data['car_page_description'] = this.carPageDescription;
    data['car_page_schema'] = this.carPageSchema;
    data['price'] = this.price;
    data['mileage'] = this.mileage;
    data['transmission_id'] = this.transmissionId;
    data['color_id'] = this.colorId;
    data['type_id'] = this.typeId;
    data['registration_no'] = this.registrationNo;
    data['registration_pic'] = this.registrationPic;
    data['drive_id'] = this.driveId;
    data['day_price'] = this.dayPrice;
    data['weekly_price'] = this.weeklyPrice;
    data['monthly_price'] = this.monthlyPrice;
    data['monthly_installment'] = this.monthlyInstallment;
    data['feature_image'] = this.featureImage;
    data['pic_1'] = this.pic1;
    data['pic_2'] = this.pic2;
    data['pic_3'] = this.pic3;
    data['pic_4'] = this.pic4;
    data['pic_5'] = this.pic5;
    data['pic_6'] = this.pic6;
    data['car_status'] = this.carStatus;
    data['is_feature'] = this.isFeature;
    data['created_at'] = this.createdAt;
    data['created_by'] = this.createdBy;
    data['company_name'] = this.companyName;
    data['company_page_url'] = this.companyPageUrl;
    data['company_phone'] = this.companyPhone;
    data['company_whattsap'] = this.companyWhattsap;
    data['address'] = this.address;
    data['logo'] = this.logo;
    data['trade_license'] = this.tradeLicense;
    data['supplier_video_link'] = this.supplierVideoLink;
    data['company_page_title'] = this.companyPageTitle;
    data['company_page_keywords'] = this.companyPageKeywords;
    data['company_page_description'] = this.companyPageDescription;
    data['company_page_schema'] = this.companyPageSchema;
    data['lead_email'] = this.leadEmail;
    data['lead_expire_date'] = this.leadExpireDate;
    data['updated_at'] = this.updatedAt;
    data['category_name'] = this.categoryName;
    data['category_url'] = this.categoryUrl;
    data['type'] = this.type;
    data['type_page_url'] = this.typePageUrl;
    data['brand'] = this.brand;
    data['brand_page_title'] = this.brandPageTitle;
    data['brand_page_url'] = this.brandPageUrl;
    data['brand_page_keywords'] = this.brandPageKeywords;
    data['brand_page_description'] = this.brandPageDescription;
    data['brand_schema'] = this.brandSchema;
    data['brand_pic'] = this.brandPic;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['label'] = this.label;
    data['active'] = this.active;
    return data;
  }
}
