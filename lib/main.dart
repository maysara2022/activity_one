import 'package:activity_one/Demo_Data.dart';
import 'package:flutter/material.dart';

import 'Widgets.dart';

void main() {
  runApp(const MainPage());
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  WidgetItems( imagesList: DemoData().items,));
  }
}
