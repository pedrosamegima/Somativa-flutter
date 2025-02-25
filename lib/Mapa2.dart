import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa2 extends StatefulWidget {
  const Mapa2({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa2> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('App de Maps'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack
        (
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(52.5186, 13.4081), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=00d0a39eb24e42b19879144f821c41f6',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 100.0,
                    height: 100.0,
                    point: LatLng(52.5186, 13.4081),//Berlim, AL
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.deepPurple,),
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}