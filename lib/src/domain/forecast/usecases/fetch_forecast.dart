import 'package:anemoi_weather/src/domain/core/types/typedef.dart';
import 'package:anemoi_weather/src/domain/core/usecase/usecase.dart';
import 'package:anemoi_weather/src/domain/forecast/entities/forecast.dart';
import 'package:anemoi_weather/src/domain/forecast/enums/enums.dart';
import 'package:anemoi_weather/src/domain/forecast/repositories/forecast_repository.dart';
import 'package:anemoi_weather/src/domain/manage_locations/entities/user_location.dart';

class FetchForecast extends UsecaseWithParams<Forecast, UserLocation> {
  FetchForecast(this._repo);
  final ForecastRepository _repo;

  @override
  ResultFuture<Forecast> call(UserLocation params) {
    return _repo.getForecast(
      params.lat,
      params.long,
      current: [
        CurrentParameters.temperature2M,
        CurrentParameters.windspeed10M,
        CurrentParameters.relativehumidity2M,
        CurrentParameters.weathercode,
        CurrentParameters.precipitation,
      ],
      hourly: [
        HourlyParameters.temperature2M,
        HourlyParameters.windspeed10M,
        HourlyParameters.relativehumidity2M,
        HourlyParameters.weathercode,
        HourlyParameters.precipitation,
        HourlyParameters.precipitationProbability,
      ],
    );
  }
}
