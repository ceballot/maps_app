import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/blocs/blocs.dart';
import 'package:maps_app/themes/themes.dart';

class MapView extends StatelessWidget {
  const MapView({required this.initialLocation, super.key});
  final LatLng initialLocation;

  @override
  Widget build(BuildContext context) {
    final mapBloc = BlocProvider.of<MapBloc>(context);
    final CameraPosition initialCameraPosition =
        CameraPosition(target: initialLocation, zoom: 15);
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        compassEnabled: false,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        style: jsonEncode(wyMapTheme),
        onMapCreated: (controller) {
          mapBloc.add(OnMapInitializedEvent(controller));
        },
      ),
    );
  }
}
