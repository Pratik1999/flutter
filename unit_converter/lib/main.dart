import 'package:flutter/material.dart';


class GetBody extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
  return
      Container(
        color:Colors.greenAccent,
      );
  }
}
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Rectangle"),
      ),
      body: GetBody(),
    ),
  ));
}
