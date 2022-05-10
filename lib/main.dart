import 'package:flutter/material.dart';
import 'package:new_provider/state/app_state.dart';
import 'package:new_provider/view_page/api_view.dart';
import 'package:new_provider/view_page/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> App_State(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: API_View(),
    ),

    );
  }
}


