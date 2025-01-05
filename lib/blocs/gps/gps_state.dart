part of 'gps_bloc.dart';

sealed class GpsState extends Equatable {
  final bool isGpsEnabled;
  final bool isGpsPermissionGranted;

  bool get isAllGranted => isGpsEnabled && isGpsPermissionGranted;

  const GpsState(
      {required this.isGpsEnabled, required this.isGpsPermissionGranted});

  GpsState copyWith({
    bool? isGpsEnabled,
    bool? isGpsPermissionGranted,
  }) =>
      GpsAccessState(
        isGpsEnabled: isGpsEnabled ?? this.isGpsEnabled,
        isGpsPermissionGranted:
            isGpsPermissionGranted ?? this.isGpsPermissionGranted,
      );

  @override
  List<Object> get props => [isGpsEnabled, isGpsPermissionGranted];
}

class GpsInitialState extends GpsState {
  const GpsInitialState()
      : super(isGpsEnabled: false, isGpsPermissionGranted: false);
}

class GpsAccessState extends GpsState {
  const GpsAccessState(
      {required super.isGpsEnabled, required super.isGpsPermissionGranted});
}
