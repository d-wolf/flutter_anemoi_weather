import 'package:anemoi_weather/src/data/forecast/api_strings.dart';
import 'package:anemoi_weather/src/data/forecast/models/current/current_model.dart';
import 'package:anemoi_weather/src/data/forecast/models/current/current_units_model.dart';
import 'package:anemoi_weather/src/data/forecast/models/daily/daily_model.dart';
import 'package:anemoi_weather/src/data/forecast/models/daily/daily_units_model.dart';
import 'package:anemoi_weather/src/data/forecast/models/hourly/hourly_model.dart';
import 'package:anemoi_weather/src/data/forecast/models/hourly/hourly_units_model.dart';
import 'package:anemoi_weather/src/domain/core/types/typedef.dart';
import 'package:anemoi_weather/src/domain/forecast/entities/forecast.dart';

class ForecastModel extends Forecast {
  const ForecastModel({
    required super.latitude,
    required super.longitude,
    required super.generationtimeMs,
    required super.utcOffsetSeconds,
    required super.timezone,
    required super.timezoneAbbreviation,
    required super.elevation,
    super.currentUnits,
    super.current,
    super.hourlyUnits,
    super.hourly,
    super.dailyUnits,
    super.daily,
  });

  factory ForecastModel.fromJson(DataMap json) {
    return ForecastModel(
      latitude: double.parse(json[ApiStrings.latitude].toString()),
      longitude: double.parse(json[ApiStrings.longitude].toString()),
      generationtimeMs:
          double.parse(json[ApiStrings.generationtimeMs].toString()),
      utcOffsetSeconds: int.parse(json[ApiStrings.utcOffsetSeconds].toString()),
      timezone: json[ApiStrings.timezone].toString(),
      timezoneAbbreviation: json[ApiStrings.timezoneAbbreviation].toString(),
      elevation: double.parse(json[ApiStrings.elevation].toString()),
      currentUnits: json.containsKey(ApiStrings.currentUnits)
          ? CurrentUnitsModel.fromJson(json[ApiStrings.currentUnits] as DataMap)
          : null,
      current: json.containsKey(ApiStrings.current)
          ? CurrentModel.fromJson(json[ApiStrings.current] as DataMap)
          : null,
      hourlyUnits: json.containsKey(ApiStrings.hourlyUnits)
          ? HourlyUnitsModel.fromJson(json[ApiStrings.hourlyUnits] as DataMap)
          : null,
      hourly: json.containsKey(ApiStrings.hourly)
          ? HourlyModel.fromJson(json[ApiStrings.hourly] as DataMap)
          : null,
      dailyUnits: json.containsKey(ApiStrings.dailyUnits)
          ? DailyUnitsModel.fromJson(json[ApiStrings.dailyUnits] as DataMap)
          : null,
      daily: json.containsKey(ApiStrings.daily)
          ? DailyModel.fromJson(json[ApiStrings.daily] as DataMap)
          : null,
    );
  }

  DataMap toJson() {
    final map = <String, dynamic>{
      ApiStrings.latitude: latitude,
      ApiStrings.longitude: longitude,
      ApiStrings.generationtimeMs: generationtimeMs,
      ApiStrings.utcOffsetSeconds: utcOffsetSeconds,
      ApiStrings.timezone: timezone,
      ApiStrings.timezoneAbbreviation: timezoneAbbreviation,
      ApiStrings.elevation: elevation,
    };

    if (currentUnits != null) {
      map[ApiStrings.currentUnits] =
          CurrentUnitsModel.fromDomain(currentUnits!).toJson();
    }

    if (current != null) {
      map[ApiStrings.current] = CurrentModel.fromDomain(current!).toJson();
    }

    if (hourlyUnits != null) {
      map[ApiStrings.hourlyUnits] =
          HourlyUnitsModel.fromDomain(hourlyUnits!).toJson();
    }

    if (hourly != null) {
      map[ApiStrings.hourly] = HourlyModel.fromDomain(hourly!).toJson();
    }

    if (dailyUnits != null) {
      map[ApiStrings.dailyUnits] =
          DailyUnitsModel.fromDomain(dailyUnits!).toJson();
    }

    if (hourly != null) {
      map[ApiStrings.daily] = DailyModel.fromDomain(daily!).toJson();
    }

    return map;
  }
}
