import 'package:dogs_api/model/dogs.dart';

class DogsViewModel {
  Dogs _dog;

  DogsViewModel({Dogs dog}) : _dog = dog;

  String get name {
    return _dog.name;
  }

  String get origin {
    return _dog.origin;
  }

  String get temperament {
    return _dog.temperament;
  }

  String get urlToImage {
    return _dog.urlToImage;
  }

}