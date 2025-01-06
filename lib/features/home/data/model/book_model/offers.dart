import 'list_price.dart';

class Offers {
  int? finskyOfferType;
  ListPrice? listPrice;
  ListPrice? retailPrice;

  Offers({this.finskyOfferType, this.listPrice, this.retailPrice});

  Offers.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'] != null
        ? new ListPrice.fromJson(json['listPrice'])
        : null;
    retailPrice = json['retailPrice'] != null
        ? new ListPrice.fromJson(json['retailPrice'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['finskyOfferType'] = this.finskyOfferType;
    if (this.listPrice != null) {
      data['listPrice'] = this.listPrice!.toJson();
    }
    if (this.retailPrice != null) {
      data['retailPrice'] = this.retailPrice!.toJson();
    }
    return data;
  }
}
