import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new PaginaInicio(title: "Mi album de fotos Gaby"));
  }
}

class PaginaInicio extends StatefulWidget {
  final String title;
  @override
  PaginaInicio({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaInicioState();
  }
}

class PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5),
        children: _buildGridTiles(15),
      ), //Fin Gridview
    ); //Fin Scaffold
  } //Fin Widget
} //Fin Pgina Principal State

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'images/image0${index + 1}.jpg' : 'images/image${index + 1}.jpg';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    );
  }); //Fin Contenedor generar nombre de foto
  return containers;
} //Fin de List