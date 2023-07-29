class HomeModel {
  ClientModel clientModel;
  String status;
  HomeModel({required this.clientModel, required this.status});
  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
      clientModel: ClientModel.fromJson(json['clientModel']),
      status: json['status']);
  Map<String, dynamic> toJson() => {};
}

class ClientModel {
  String name;
  String location;
  String orderPrice;
  String orderTotalCount;
  String image;
  String lat;
  String lang;
  List<ProductModel> productList;
  ClientModel({
    required this.name,
    required this.orderPrice,
    required this.location,
    required this.orderTotalCount,
    required this.image,
    required this.lang,
    required this.lat,
    required this.productList,
  });
  factory ClientModel.fromJson(Map<String, dynamic> json) => ClientModel(
        name: json['name'],
        location: json['location'],
        orderPrice: json['orderPrice'],
        orderTotalCount: json['orderTotalCount'],
        image: json['image'],
        lang: json['lang'],
        lat: json['lat'],
        productList: (json['productList'] as List)
            .map((e) => ProductModel.fromJson(e))
            .toList(),
      );
}

class ProductModel {
  String name;
  String count;
  String price;
  ProductModel({required this.name, required this.price, required this.count});
  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        name: json['name'],
        count: json['count'],
        price: json['price'],
      );
}
