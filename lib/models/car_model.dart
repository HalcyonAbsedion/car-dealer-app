class PostModel {
  String? _imageUrl;
  String? _description;
  String? _name;
  double? _price;

  PostModel({String? imageUrl, String? description, String? name, double? price})
      : _imageUrl = imageUrl,
        _description = description,
        _name = name,
        _price = price;

  PostModel.fromJson(Map<String, dynamic> json)
      : _imageUrl = json['imageUrl'],
        _description = json['description'],
        _name = json['name'],
        _price = json['price'];

  Map<String, dynamic> toJson() {
    return {
      'imageUrl': _imageUrl,
      'description': _description,
      'name': _name,
      'price': _price,
    };
  }

  // Getters
  String? get imageUrl => _imageUrl;
  String? get description => _description;
  String? get name => _name;
  double? get price => _price;
}
