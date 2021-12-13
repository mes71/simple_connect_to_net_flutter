import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_connect_to_net/providers/photos_provider.dart';
import 'package:simple_connect_to_net/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx)=>PhotosProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Connect to net ',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:const MyHome() ,
        routes:{
          SinglePhotos.routeName:(ctx)=> const SinglePhotos(),
        },
      ),
    );
  }
}

