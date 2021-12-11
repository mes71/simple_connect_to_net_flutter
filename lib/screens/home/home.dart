import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_connect_to_net/providers/photos_provider.dart';


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {



  @override
  void initState() {

    super.initState();
  }


  @override
  void didChangeDependencies() {
    Provider.of<PhotosProvider>(context).fetchAndSetData().then((_) =>print("Ok2"));
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple connect to net "),
      ),




    );
  }
}
