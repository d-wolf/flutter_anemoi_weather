import 'package:anemoi_weather/src/domain/core/types/typedef.dart';
import 'package:anemoi_weather/src/domain/manage_locations/entities/user_location.dart';
import 'package:anemoi_weather/src/domain/manage_locations/entities/user_location_collection.dart';

abstract class UserLocationsRepository {
  ResultFuture<UserLocationCollection> add(UserLocation value);
  ResultFuture<UserLocationCollection> getAll();
  ResultFuture<UserLocationCollection> delete(UserLocation value);
  ResultFuture<UserLocationCollection> setSelected(UserLocation value);
  ResultFuture<UserLocation?> getSelected();
}
