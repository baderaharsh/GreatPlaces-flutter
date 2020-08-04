import 'dart:io';

import 'package:flutter/foundation.dart';

import '../models/place.dart';

class Places with ChangeNotifier {
  List<Place> _places = [];

  List<Place> get places {
    return [..._places];
  }

  void addPlace(String pickedTitle, File image) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        title: pickedTitle,
        location: null,
        image: image);
    _places.add(newPlace);
    notifyListeners();
  }
}
