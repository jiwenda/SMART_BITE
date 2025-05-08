import 'package:flutter/material.dart';
import 'package:smart_bite/common/style_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SMARTBITE", style: TTextStyle.heading3),
        backgroundColor: Tcolour.primaryBg,
      ),
      body: Center(child: Text("welcome home page")),
    );
  }
}
