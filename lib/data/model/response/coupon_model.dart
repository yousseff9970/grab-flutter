class CouponModel {
  int id;
  String title;
  String code;
  String startDate;
  String expireDate;
  double minPurchase;
  double maxDiscount;
  double discount;
  String discountType;
  String couponType;
  int limit;
  String data;
  String createdAt;
  String updatedAt;
  Restaurant restaurant;

  CouponModel(
      {this.id,
        this.title,
        this.code,
        this.startDate,
        this.expireDate,
        this.minPurchase,
        this.maxDiscount,
        this.discount,
        this.discountType,
        this.couponType,
        this.limit,
        this.data,
        this.createdAt,
        this.updatedAt,
      this.restaurant});

  CouponModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    code = json['code'];
    startDate = json['start_date'];
    expireDate = json['expire_date'];
    minPurchase = json['min_purchase'].toDouble();
    maxDiscount = json['max_discount'].toDouble();
    discount = json['discount'].toDouble();
    discountType = json['discount_type'];
    couponType = json['coupon_type'];
    limit = json['limit'];
    data = json['data'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if(json['restaurant'] != null){
      restaurant = Restaurant.fromJson(json['restaurant']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['code'] = this.code;
    data['start_date'] = this.startDate;
    data['expire_date'] = this.expireDate;
    data['min_purchase'] = this.minPurchase;
    data['max_discount'] = this.maxDiscount;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['coupon_type'] = this.couponType;
    data['limit'] = this.limit;
    data['data'] = this.data;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Restaurant {
  int id;
  String name;

  Restaurant({this.id, this.name});

  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}


