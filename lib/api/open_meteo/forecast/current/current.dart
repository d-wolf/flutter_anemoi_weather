import 'package:anemoi_weather/api/open_meteo/forecast/api_strings.dart';
import 'package:anemoi_weather/api/open_meteo/forecast/current/enums.dart';

class Current {
  final DateTime time;
  final int interval;
  final double? temperature2M;
  final int? relativehumidity2M;
  final double? apparentTemperature;
  final bool? isDay;
  final double? precipitation;
  final int? rain;
  final int? showers;
  final int? snowfall;
  final int? weathercode;
  final int? cloudcover;
  final double? pressureMsl;
  final double? surfacePressure;
  final double? windspeed10M;
  final int? winddirection10M;
  final int? windgusts10M;

  Current({
    required this.time,
    required this.interval,
    this.temperature2M,
    this.relativehumidity2M,
    this.apparentTemperature,
    this.isDay,
    this.precipitation,
    this.rain,
    this.showers,
    this.snowfall,
    this.weathercode,
    this.cloudcover,
    this.pressureMsl,
    this.surfacePressure,
    this.windspeed10M,
    this.winddirection10M,
    this.windgusts10M,
  });

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      time: DateTime.fromMillisecondsSinceEpoch(
          (json[ApiStrings.time] as int) * 1000,
          isUtc: true),
      interval: json[ApiStrings.interval] as int,
      temperature2M: json.containsKey(CurrentParameters.temperature2M.value)
          ? json[CurrentParameters.temperature2M.value] as double
          : null,
      relativehumidity2M:
          json.containsKey(CurrentParameters.relativehumidity2M.value)
              ? json[CurrentParameters.relativehumidity2M.value] as int
              : null,
      apparentTemperature:
          json.containsKey(CurrentParameters.apparentTemperature.value)
              ? json[CurrentParameters.apparentTemperature.value] as double
              : null,
      isDay: json.containsKey(CurrentParameters.isDay.value)
          ? (json[CurrentParameters.isDay.value] as int) == 1
          : null,
      precipitation: json.containsKey(CurrentParameters.precipitation.value)
          ? json[CurrentParameters.precipitation.value] as double
          : null,
      rain: json.containsKey(CurrentParameters.rain.value)
          ? json[CurrentParameters.rain.value] as int
          : null,
      showers: json.containsKey(CurrentParameters.showers.value)
          ? json[CurrentParameters.showers.value] as int
          : null,
      snowfall: json.containsKey(CurrentParameters.snowfall.value)
          ? json[CurrentParameters.snowfall.value] as int
          : null,
      weathercode: json.containsKey(CurrentParameters.weathercode.value)
          ? json[CurrentParameters.weathercode.value] as int
          : null,
      cloudcover: json.containsKey(CurrentParameters.cloudcover.value)
          ? json[CurrentParameters.cloudcover.value] as int
          : null,
      pressureMsl: json.containsKey(CurrentParameters.pressureMsl.value)
          ? json[CurrentParameters.pressureMsl.value] as double
          : null,
      surfacePressure: json.containsKey(CurrentParameters.surfacePressure.value)
          ? json[CurrentParameters.surfacePressure.value] as double
          : null,
      windspeed10M: json.containsKey(CurrentParameters.windspeed10M.value)
          ? json[CurrentParameters.windspeed10M.value] as double
          : null,
      winddirection10M:
          json.containsKey(CurrentParameters.winddirection10M.value)
              ? json[CurrentParameters.winddirection10M.value] as int
              : null,
      windgusts10M: json.containsKey(CurrentParameters.windgusts10M.value)
          ? json[CurrentParameters.windgusts10M.value] as int
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      ApiStrings.time: time.millisecondsSinceEpoch ~/ 1000,
      ApiStrings.interval: interval,
    };

    if (temperature2M != null) {
      map[CurrentParameters.temperature2M.value] = temperature2M;
    }

    if (relativehumidity2M != null) {
      map[CurrentParameters.relativehumidity2M.value] = relativehumidity2M;
    }

    if (apparentTemperature != null) {
      map[CurrentParameters.apparentTemperature.value] = apparentTemperature;
    }

    if (isDay != null) {
      map[CurrentParameters.isDay.value] = isDay! ? 1 : 0;
    }

    if (precipitation != null) {
      map[CurrentParameters.precipitation.value] = precipitation;
    }

    if (rain != null) {
      map[CurrentParameters.rain.value] = rain;
    }

    if (snowfall != null) {
      map[CurrentParameters.snowfall.value] = snowfall;
    }

    if (weathercode != null) {
      map[CurrentParameters.weathercode.value] = weathercode;
    }

    if (cloudcover != null) {
      map[CurrentParameters.cloudcover.value] = cloudcover;
    }

    if (pressureMsl != null) {
      map[CurrentParameters.pressureMsl.value] = pressureMsl;
    }

    if (surfacePressure != null) {
      map[CurrentParameters.surfacePressure.value] = surfacePressure;
    }

    if (windspeed10M != null) {
      map[CurrentParameters.windspeed10M.value] = windspeed10M;
    }

    if (winddirection10M != null) {
      map[CurrentParameters.winddirection10M.value] = winddirection10M;
    }

    if (windgusts10M != null) {
      map[CurrentParameters.windgusts10M.value] = windgusts10M;
    }

    return map;
  }
}