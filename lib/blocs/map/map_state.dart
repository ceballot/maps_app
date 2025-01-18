part of 'map_bloc.dart';

class MapState extends Equatable {
  final bool isMapInitialized;
  final bool isFollowUser;

  const MapState({required this.isMapInitialized, required this.isFollowUser});

  MapState copyWith({
    bool? isMapInitialized,
    bool? isFollowUser,
  }) {
    return MapState(
      isMapInitialized: isMapInitialized ?? this.isMapInitialized,
      isFollowUser: isFollowUser ?? this.isFollowUser,
    );
  }

  @override
  List<Object> get props => [isMapInitialized, isFollowUser];
}

final class MapInitialState extends MapState {
  const MapInitialState(
      {super.isMapInitialized = false, super.isFollowUser = false});
}
