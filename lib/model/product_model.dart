class ProductModel {
  bool? _success;
  String? _message;
  List<Data>? _data;

  ProductModel({bool? success, String? message, List<Data>? data}) {
    if (success != null) {
      this._success = success;
    }
    if (message != null) {
      this._message = message;
    }
    if (data != null) {
      this._data = data;
    }
  }

  bool? get success => _success;
  set success(bool? success) => _success = success;
  String? get message => _message;
  set message(String? message) => _message = message;
  List<Data>? get data => _data;
  set data(List<Data>? data) => _data = data;

  ProductModel.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this._success;
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? _sId;
  bool? _isActive;
  String? _createdAt;
  String? _name;
  String? _description;
  String? _shopemail;
  String? _shopaddress;
  String? _shopcity;
  String? _userid;
  String? _image;
  int? _iV;
  List<Products>? _products;

  Data(
      {String? sId,
      bool? isActive,
      String? createdAt,
      String? name,
      String? description,
      String? shopemail,
      String? shopaddress,
      String? shopcity,
      String? userid,
      String? image,
      int? iV,
      List<Products>? products}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (isActive != null) {
      this._isActive = isActive;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (name != null) {
      this._name = name;
    }
    if (description != null) {
      this._description = description;
    }
    if (shopemail != null) {
      this._shopemail = shopemail;
    }
    if (shopaddress != null) {
      this._shopaddress = shopaddress;
    }
    if (shopcity != null) {
      this._shopcity = shopcity;
    }
    if (userid != null) {
      this._userid = userid;
    }
    if (image != null) {
      this._image = image;
    }
    if (iV != null) {
      this._iV = iV;
    }
    if (products != null) {
      this._products = products;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  bool? get isActive => _isActive;
  set isActive(bool? isActive) => _isActive = isActive;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get shopemail => _shopemail;
  set shopemail(String? shopemail) => _shopemail = shopemail;
  String? get shopaddress => _shopaddress;
  set shopaddress(String? shopaddress) => _shopaddress = shopaddress;
  String? get shopcity => _shopcity;
  set shopcity(String? shopcity) => _shopcity = shopcity;
  String? get userid => _userid;
  set userid(String? userid) => _userid = userid;
  String? get image => _image;
  set image(String? image) => _image = image;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  List<Products>? get products => _products;
  set products(List<Products>? products) => _products = products;

  Data.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _name = json['name'];
    _description = json['description'];
    _shopemail = json['shopemail'];
    _shopaddress = json['shopaddress'];
    _shopcity = json['shopcity'];
    _userid = json['userid'];
    _image = json['image'];
    _iV = json['__v'];
    if (json['products'] != null) {
      _products = <Products>[];
      json['products'].forEach((v) {
        _products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['is_active'] = this._isActive;
    data['created_at'] = this._createdAt;
    data['name'] = this._name;
    data['description'] = this._description;
    data['shopemail'] = this._shopemail;
    data['shopaddress'] = this._shopaddress;
    data['shopcity'] = this._shopcity;
    data['userid'] = this._userid;
    data['image'] = this._image;
    data['__v'] = this._iV;
    if (this._products != null) {
      data['products'] = this._products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? _sId;
  bool? _onSale;
  int? _salePercent;
  int? _sold;
  bool? _sliderNew;
  bool? _sliderRecent;
  bool? _sliderSold;
  String? _date;
  String? _title;
  String? _categories;
  String? _subcate;
  String? _shop;
  String? _price;
  String? _saleTitle;
  String? _salePrice;
  String? _description;
  String? _colors;
  String? _size;
  List<Images>? _images;
  int? _iV;
  bool? _inWishlist;

  Products(
      {String? sId,
      bool? onSale,
      int? salePercent,
      int? sold,
      bool? sliderNew,
      bool? sliderRecent,
      bool? sliderSold,
      String? date,
      String? title,
      String? categories,
      String? subcate,
      String? shop,
      String? price,
      String? saleTitle,
      String? salePrice,
      String? description,
      String? colors,
      String? size,
      List<Images>? images,
      int? iV,
      bool? inWishlist}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (onSale != null) {
      this._onSale = onSale;
    }
    if (salePercent != null) {
      this._salePercent = salePercent;
    }
    if (sold != null) {
      this._sold = sold;
    }
    if (sliderNew != null) {
      this._sliderNew = sliderNew;
    }
    if (sliderRecent != null) {
      this._sliderRecent = sliderRecent;
    }
    if (sliderSold != null) {
      this._sliderSold = sliderSold;
    }
    if (date != null) {
      this._date = date;
    }
    if (title != null) {
      this._title = title;
    }
    if (categories != null) {
      this._categories = categories;
    }
    if (subcate != null) {
      this._subcate = subcate;
    }
    if (shop != null) {
      this._shop = shop;
    }
    if (price != null) {
      this._price = price;
    }
    if (saleTitle != null) {
      this._saleTitle = saleTitle;
    }
    if (salePrice != null) {
      this._salePrice = salePrice;
    }
    if (description != null) {
      this._description = description;
    }
    if (colors != null) {
      this._colors = colors;
    }
    if (size != null) {
      this._size = size;
    }
    if (images != null) {
      this._images = images;
    }
    if (iV != null) {
      this._iV = iV;
    }
    if (inWishlist != null) {
      this._inWishlist = inWishlist;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  bool? get onSale => _onSale;
  set onSale(bool? onSale) => _onSale = onSale;
  int? get salePercent => _salePercent;
  set salePercent(int? salePercent) => _salePercent = salePercent;
  int? get sold => _sold;
  set sold(int? sold) => _sold = sold;
  bool? get sliderNew => _sliderNew;
  set sliderNew(bool? sliderNew) => _sliderNew = sliderNew;
  bool? get sliderRecent => _sliderRecent;
  set sliderRecent(bool? sliderRecent) => _sliderRecent = sliderRecent;
  bool? get sliderSold => _sliderSold;
  set sliderSold(bool? sliderSold) => _sliderSold = sliderSold;
  String? get date => _date;
  set date(String? date) => _date = date;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get categories => _categories;
  set categories(String? categories) => _categories = categories;
  String? get subcate => _subcate;
  set subcate(String? subcate) => _subcate = subcate;
  String? get shop => _shop;
  set shop(String? shop) => _shop = shop;
  String? get price => _price;
  set price(String? price) => _price = price;
  String? get saleTitle => _saleTitle;
  set saleTitle(String? saleTitle) => _saleTitle = saleTitle;
  String? get salePrice => _salePrice;
  set salePrice(String? salePrice) => _salePrice = salePrice;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get colors => _colors;
  set colors(String? colors) => _colors = colors;
  String? get size => _size;
  set size(String? size) => _size = size;
  List<Images>? get images => _images;
  set images(List<Images>? images) => _images = images;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  bool? get inWishlist => _inWishlist;
  set inWishlist(bool? inWishlist) => _inWishlist = inWishlist;

  Products.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _onSale = json['on_sale'];
    _salePercent = json['sale_percent'];
    _sold = json['sold'];
    _sliderNew = json['slider_new'];
    _sliderRecent = json['slider_recent'];
    _sliderSold = json['slider_sold'];
    _date = json['date'];
    _title = json['title'];
    _categories = json['categories'];
    _subcate = json['subcate'];
    _shop = json['shop'];
    _price = json['price'];
    _saleTitle = json['sale_title'];
    _salePrice = json['sale_price'];
    _description = json['description'];
    _colors = json['colors'];
    _size = json['size'];
    if (json['images'] != null) {
      _images = <Images>[];
      json['images'].forEach((v) {
        _images!.add(new Images.fromJson(v));
      });
    }
    _iV = json['__v'];
    _inWishlist = json['in_wishlist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['on_sale'] = this._onSale;
    data['sale_percent'] = this._salePercent;
    data['sold'] = this._sold;
    data['slider_new'] = this._sliderNew;
    data['slider_recent'] = this._sliderRecent;
    data['slider_sold'] = this._sliderSold;
    data['date'] = this._date;
    data['title'] = this._title;
    data['categories'] = this._categories;
    data['subcate'] = this._subcate;
    data['shop'] = this._shop;
    data['price'] = this._price;
    data['sale_title'] = this._saleTitle;
    data['sale_price'] = this._salePrice;
    data['description'] = this._description;
    data['colors'] = this._colors;
    data['size'] = this._size;
    if (this._images != null) {
      data['images'] = this._images!.map((v) => v.toJson()).toList();
    }
    data['__v'] = this._iV;
    data['in_wishlist'] = this._inWishlist;
    return data;
  }
}

class Images {
  String? _sId;
  String? _filename;
  String? _url;

  Images({String? sId, String? filename, String? url}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (filename != null) {
      this._filename = filename;
    }
    if (url != null) {
      this._url = url;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get filename => _filename;
  set filename(String? filename) => _filename = filename;
  String? get url => _url;
  set url(String? url) => _url = url;

  Images.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _filename = json['filename'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['filename'] = this._filename;
    data['url'] = this._url;
    return data;
  }
}
