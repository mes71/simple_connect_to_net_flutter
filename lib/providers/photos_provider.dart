import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple_connect_to_net/models/photos_model.dart';
import 'package:simple_connect_to_net/utils/utils.dart';


class PhotosProvider with ChangeNotifier {
  List<PhotosModel> _items = [];

  final _url = "https://jsonplaceholder.typicode.com/";


  List<PhotosModel> get photos{
    return [..._items];
  }

  Future<void> fetchAndSetData() async {
    try {
      final response =
          await http.get(Utils.getUri(_url + "photos"));

      if (response.statusCode == 200) {

        final extractedData = json.decode(response.body) as List<dynamic>;
        for (var element in extractedData) {
          _items.add(element);
        }

        notifyListeners();
      }
    } catch (error) {
      rethrow;
    }
  }
}
