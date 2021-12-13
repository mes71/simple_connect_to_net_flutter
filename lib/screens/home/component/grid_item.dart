import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_connect_to_net/models/photos_model.dart';

class GridItem extends StatelessWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photo = Provider.of<PhotosModel>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(SinglePhotos.routeName, arguments: photo.id);
          },
          child: Image.network(
            photo.thumbnailUrl!,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          title: Text(photo.title!),
        ),
      ),
    );
  }
}
