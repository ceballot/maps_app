part of 'location_bloc.dart';

class LocationState extends Equatable {
  final bool followingUser;
  final LatLng? lastKnownLocation;
  final List<LatLng> myLocationHistory;

  const LocationState(
      {this.lastKnownLocation,
      required this.myLocationHistory,
      required this.followingUser});

  LocationState copyWith({
    bool? followingUser,
    LatLng? lastKnownLocation,
    List<LatLng>? myLocationHistory,
  }) {
    return LocationState(
      followingUser: followingUser ?? this.followingUser,
      lastKnownLocation: lastKnownLocation ?? this.lastKnownLocation,
      myLocationHistory: myLocationHistory ?? this.myLocationHistory,
    );
  }

  @override
  List<Object?> get props =>
      [followingUser, lastKnownLocation, myLocationHistory];
}

final class LocationInitialState extends LocationState {
  const LocationInitialState(
      {super.followingUser = false, super.myLocationHistory = const []});
}
