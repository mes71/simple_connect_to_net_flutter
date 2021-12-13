import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_connect_to_net/providers/photos_provider.dart';

class SinglePhotos extends StatelessWidget {
  const SinglePhotos({Key? key}) : super(key: key);
  static const routeName = "/SinglePhotos";

  @override
  Widget build(BuildContext context) {
    final photoId = ModalRoute.of(context)!.settings.arguments as int;
    final photo = Provider.of<PhotosProvider>(context,listen: false).findById(photoId);
    return Scaffold(
      appBar: AppBar(title: Text(photo.id.toString()),),
      body: Column(
        children: [
          Image.network(photo.url!),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(photo.title!,style: const TextStyle(
               fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    );
  }
}
