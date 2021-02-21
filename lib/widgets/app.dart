import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Object clock;
  
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return 
       Scaffold(
          appBar: AppBar(
            title: Text('3d Scene'),
          ),
          body: Container(
            child: Cube(
              onSceneCreated: (Scene scene) {
                scene.world.add(Object(fileName: "assets/bird/AbyssinianGroundHornbill.obj"));
                scene.camera.zoom = 10;
              },
            ),
          ),
        );
  }
}
