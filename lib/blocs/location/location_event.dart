part of 'location_bloc.dart';

sealed class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object> get props => [];
}

class OnNewUserLocationEvent extends LocationEvent {
  const OnNewUserLocationEvent(this.newLocation);
  final LatLng newLocation;
}

class OnStartFollowingUserEvent extends LocationEvent {}

class OnStopFollowingUserEvent extends LocationEvent {}
