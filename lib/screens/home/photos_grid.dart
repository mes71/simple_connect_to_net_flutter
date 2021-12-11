import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_connect_to_net/providers/photos_provider.dart';
import 'package:simple_connect_to_net/screens/home/component/grid_item.dart';

class PhotosGrid extends StatelessWidget {
  PhotosGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoData = Provider.of<PhotosProvider>(context);
    final photoList = photoData.photos;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 3 / 2, crossAxisSpacing: 10),
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.all(2),
        child: ChangeNotifierProvider.value(
          value: photoList[index],
          child: const GridItem(),
        ),
      ),
      itemCount: photoList.length,
    );
  }
}
