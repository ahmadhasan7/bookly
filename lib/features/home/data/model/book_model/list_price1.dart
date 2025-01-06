class ListPricee {
  int? amountInMicros;
  String? currencyCode;

  ListPricee({this.amountInMicros, this.currencyCode});

  ListPricee.fromJson(Map<String, dynamic> json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amountInMicros'] = this.amountInMicros;
    data['currencyCode'] = this.currencyCode;
    return data;
  }
}
