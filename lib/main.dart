import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/cart_model.dart';
import 'package:shop/page/info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const InfoPage(),
      ),
    );
  }
}
