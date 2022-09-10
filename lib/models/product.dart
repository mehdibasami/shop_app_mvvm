class Product {
  String id = '';
  String catId = '';
  String title = '';
  String brand = '';
  String description = '';
  String vizhegiha = '';
  String vendor = '';
  String vendorId = '';
  String handle = '';
  String tags = '';
  String color = '';
  String productColors = '';
  String hazineErsal = '';
  int likes = 0;
  int favorites = 0;
  List imagesArray = [];
  List productCollection = [];
  List relatedProducts = [];
  bool active = true;

  Product(
      {this.id = '',
      this.catId = '',
      required this.vendorId,
      this.title = '',
      this.color = '',
      this.relatedProducts = const [],
      this.hazineErsal = '10000',
      this.brand = '',
      this.description = '',
      this.vizhegiha = '',
      this.imagesArray = const [],
      this.likes = 0,
      this.favorites = 0,
      this.productCollection = const [],
      this.vendor = '',
      this.handle = '',
      this.productColors = '',
      this.active = true,
      this.tags = ''});

  Product.fromJson(Map json) {
    productCollection = json['productCollection'] ?? [];
    vendor = json['vendor'] ?? '';
    vendorId = json['vendorId'] ?? '';
    productColors = json['productColors'] ?? '';
    handle = json['handle'] ?? '';
    active = json['active'] ?? true;
    tags = json['tags'] ?? '';
    color = json['color'] ?? '';
    id = json['_id'] ?? json['id'] ?? '';
    catId = json['catId'] ?? '';
    title = json['title'] ?? '';
    hazineErsal = json['hazineErsal'] ?? '';
    relatedProducts =
        (json['relatedProducts'] != null) ? (json["relatedProducts"]) : [];
    brand = json['brand'] ?? '';
    description = json['description'] ?? '';
    vizhegiha = json['vizhegiha'] ?? '';
    imagesArray = json['imagesArray'] ?? [];
    favorites = json['favorites'] ?? 0;
    likes = json['likes'] ?? 0;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'catId': catId,
        'vendorId': vendorId,
        'title': title,
        'hazineErsal': hazineErsal,
        'brand': brand,
        'description': description,
        'vizhegiha': vizhegiha,
        'imagesArray': imagesArray,
        'productCollection': productCollection,
        'vendor': vendor,
        'handle': handle,
        'active': active,
        'tags': tags,
        'color': color,
        'relatedProducts': relatedProducts,
        'productColors': productColors,
      };
  Map<String, dynamic> toJsonForUpdate() => {
        'id': id,
        'catId': catId,
        'title': title,
        'hazineErsal': hazineErsal,
        'brand': brand,
        'description': description,
        'vendorId': vendorId,
        'vizhegiha': vizhegiha,
        'imagesArray': imagesArray,
        'productCollection': productCollection,
        'vendor': vendor,
        'handle': handle,
        'active': active,
        'tags': tags,
        'color': color,
        'relatedProducts': relatedProducts,
      };
}
