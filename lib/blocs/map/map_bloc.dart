import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  GoogleMapController? mapController;

  MapBloc() : super(MapInitialState()) {
    on<OnMapInitializedEvent>((event, emit) {
      mapController = event.controller;
      // mapController!.setMapStyle(jsonEncode(uberMapTheme));
      emit(state.copyWith(isMapInitialized: true));
    });
  }
  void moveCamera(LatLng newLocation) {
    final cameraUpdate = CameraUpdate.newLatLng(newLocation);
    mapController?.animateCamera(cameraUpdate);
  }
}
