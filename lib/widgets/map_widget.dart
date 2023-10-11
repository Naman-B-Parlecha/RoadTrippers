import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({
    super.key,
    required this.currLoc,
  });

  final LatLng currLoc;

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: widget.currLoc,
        initialZoom: 15,
        onTap: (psn, loc) {},
      ),
      children: [
        TileLayer(
          urlTemplate:
              'https://{s}.google.com/vt/lyrs=m&hl={hl}&x={x}&y={y}&z={z}',
          additionalOptions: const {'hl': 'en'},
          subdomains: const ['mt0', 'mt1', 'mt2', 'mt3'],
        ),
        CircleLayer(
          circles: [
            CircleMarker(
              point: widget.currLoc,
              radius: 5,
              color: Colors.blue[700]!.withOpacity(0.9),
              borderStrokeWidth: 3.0,
              borderColor: Colors.blue[700]!,
            ),
            CircleMarker(
              point: widget.currLoc,
              radius: 15,
              color: Colors.blue.withOpacity(0.2),
            )
          ],
        )
      ],
    );
  }
}
