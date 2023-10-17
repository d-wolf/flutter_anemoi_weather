import 'dart:convert';

import 'package:anemoi_weather/api/open_meteo/forecast/api_strings.dart';
import 'package:anemoi_weather/api/open_meteo/forecast/daily/enums.dart';

class Daily {
  final List<DateTime> time;
  final List<int> weathercode;
  final List<double> temperature2MMax;
  final List<double> temperature2MMin;
  final List<double> apparentTemperatureMax;
  final List<double> apparentTemperatureMin;
  final List<String> sunrise;
  final List<String> sunset;
  final List<double> uvIndexMax;
  final List<double> uvIndexClearSkyMax;
  final List<double> precipitationSum;
  final List<double> rainSum;
  final List<int> showersSum;
  final List<double> snowfallSum;
  final List<int> precipitationHours;
  final List<int> precipitationProbabilityMax;
  final List<double> windspeed10MMax;
  final List<double> windgusts10MMax;
  final List<int> winddirection10MDominant;
  final List<double> shortwaveRadiationSum;
  final List<double> et0FaoEvapotranspiration;

  Daily({
    required this.time,
    this.weathercode = const [],
    this.temperature2MMax = const [],
    this.temperature2MMin = const [],
    this.apparentTemperatureMax = const [],
    this.apparentTemperatureMin = const [],
    this.sunrise = const [],
    this.sunset = const [],
    this.uvIndexMax = const [],
    this.uvIndexClearSkyMax = const [],
    this.precipitationSum = const [],
    this.rainSum = const [],
    this.showersSum = const [],
    this.snowfallSum = const [],
    this.precipitationHours = const [],
    this.precipitationProbabilityMax = const [],
    this.windspeed10MMax = const [],
    this.windgusts10MMax = const [],
    this.winddirection10MDominant = const [],
    this.shortwaveRadiationSum = const [],
    this.et0FaoEvapotranspiration = const [],
  });

  factory Daily.fromJson(Map<String, dynamic> json) {
    return Daily(
      time: List<int>.from(json[ApiStrings.time])
          .map(
              (e) => DateTime.fromMillisecondsSinceEpoch(e * 1000, isUtc: true))
          .toList(),
      temperature2MMax: json.containsKey(DailyParameters.temperature2MMax.value)
          ? List<double>.from(json[DailyParameters.temperature2MMax.value])
          : [],
      temperature2MMin: json.containsKey(DailyParameters.temperature2MMin.value)
          ? List<double>.from(json[DailyParameters.temperature2MMin.value])
          : [],
      apparentTemperatureMax:
          json.containsKey(DailyParameters.apparentTemperatureMax.value)
              ? List<double>.from(
                  json[DailyParameters.apparentTemperatureMax.value])
              : [],
      apparentTemperatureMin:
          json.containsKey(DailyParameters.apparentTemperatureMin.value)
              ? List<double>.from(
                  json[DailyParameters.apparentTemperatureMin.value])
              : [],
      sunrise: json.containsKey(DailyParameters.sunrise.value)
          ? List<String>.from(json[DailyParameters.sunrise.value])
          : [],
      sunset: json.containsKey(DailyParameters.sunset.value)
          ? List<String>.from(json[DailyParameters.sunset.value])
          : [],
      uvIndexMax: json.containsKey(DailyParameters.uvIndexMax.value)
          ? List<double>.from(json[DailyParameters.uvIndexMax.value])
          : [],
      uvIndexClearSkyMax: json
              .containsKey(DailyParameters.uvIndexClearSkyMax.value)
          ? List<double>.from(json[DailyParameters.uvIndexClearSkyMax.value])
          : [],
      precipitationSum: json.containsKey(DailyParameters.precipitationSum.value)
          ? List<double>.from(json[DailyParameters.precipitationSum.value])
          : [],
      rainSum: json.containsKey(DailyParameters.rainSum.value)
          ? List<double>.from(json[DailyParameters.rainSum.value])
          : [],
      showersSum: json.containsKey(DailyParameters.showersSum.value)
          ? List<int>.from(json[DailyParameters.showersSum.value])
          : [],
      snowfallSum: json.containsKey(DailyParameters.snowfallSum.value)
          ? List<double>.from(json[DailyParameters.snowfallSum.value])
          : [],
      precipitationHours:
          json.containsKey(DailyParameters.precipitationHours.value)
              ? List<int>.from(json[DailyParameters.precipitationHours.value])
              : [],
      precipitationProbabilityMax:
          json.containsKey(DailyParameters.precipitationProbabilityMax.value)
              ? List<int>.from(
                  json[DailyParameters.precipitationProbabilityMax.value])
              : [],
      windspeed10MMax: json.containsKey(DailyParameters.windspeed10MMax.value)
          ? List<double>.from(json[DailyParameters.windspeed10MMax.value])
          : [],
      windgusts10MMax: json.containsKey(DailyParameters.windgusts10MMax.value)
          ? List<double>.from(json[DailyParameters.windgusts10MMax.value])
          : [],
      winddirection10MDominant: json
              .containsKey(DailyParameters.winddirection10MDominant.value)
          ? List<int>.from(json[DailyParameters.winddirection10MDominant.value])
          : [],
      shortwaveRadiationSum: json
              .containsKey(DailyParameters.shortwaveRadiationSum.value)
          ? List<double>.from(json[DailyParameters.shortwaveRadiationSum.value])
          : [],
      et0FaoEvapotranspiration:
          json.containsKey(DailyParameters.et0FaoEvapotranspiration.value)
              ? List<double>.from(
                  json[DailyParameters.et0FaoEvapotranspiration.value])
              : [],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      ApiStrings.time: jsonEncode(
          time.map((e) => e.millisecondsSinceEpoch ~/ 1000).toList()),
    };

    if (temperature2MMax.isNotEmpty) {
      map[DailyParameters.temperature2MMax.value] =
          jsonEncode(temperature2MMax);
    }

    if (temperature2MMin.isNotEmpty) {
      map[DailyParameters.temperature2MMin.value] =
          jsonEncode(temperature2MMin);
    }

    if (apparentTemperatureMax.isNotEmpty) {
      map[DailyParameters.apparentTemperatureMax.value] =
          jsonEncode(apparentTemperatureMax);
    }

    if (apparentTemperatureMin.isNotEmpty) {
      map[DailyParameters.apparentTemperatureMin.value] =
          jsonEncode(apparentTemperatureMin);
    }

    if (sunrise.isNotEmpty) {
      map[DailyParameters.sunrise.value] = jsonEncode(sunrise);
    }

    if (sunrise.isNotEmpty) {
      map[DailyParameters.sunrise.value] = jsonEncode(sunrise);
    }

    if (sunset.isNotEmpty) {
      map[DailyParameters.sunset.value] = jsonEncode(sunset);
    }

    if (uvIndexMax.isNotEmpty) {
      map[DailyParameters.uvIndexMax.value] = jsonEncode(uvIndexMax);
    }

    if (uvIndexClearSkyMax.isNotEmpty) {
      map[DailyParameters.uvIndexClearSkyMax.value] =
          jsonEncode(uvIndexClearSkyMax);
    }

    if (precipitationSum.isNotEmpty) {
      map[DailyParameters.precipitationSum.value] =
          jsonEncode(precipitationSum);
    }

    if (rainSum.isNotEmpty) {
      map[DailyParameters.rainSum.value] = jsonEncode(rainSum);
    }

    if (showersSum.isNotEmpty) {
      map[DailyParameters.showersSum.value] = jsonEncode(showersSum);
    }

    if (snowfallSum.isNotEmpty) {
      map[DailyParameters.snowfallSum.value] = jsonEncode(snowfallSum);
    }

    if (precipitationHours.isNotEmpty) {
      map[DailyParameters.precipitationHours.value] =
          jsonEncode(precipitationHours);
    }

    if (precipitationProbabilityMax.isNotEmpty) {
      map[DailyParameters.precipitationProbabilityMax.value] =
          jsonEncode(precipitationProbabilityMax);
    }

    if (windspeed10MMax.isNotEmpty) {
      map[DailyParameters.windspeed10MMax.value] = jsonEncode(windspeed10MMax);
    }

    if (windgusts10MMax.isNotEmpty) {
      map[DailyParameters.windgusts10MMax.value] = jsonEncode(windgusts10MMax);
    }

    if (winddirection10MDominant.isNotEmpty) {
      map[DailyParameters.winddirection10MDominant.value] =
          jsonEncode(winddirection10MDominant);
    }

    if (shortwaveRadiationSum.isNotEmpty) {
      map[DailyParameters.shortwaveRadiationSum.value] =
          jsonEncode(shortwaveRadiationSum);
    }

    if (et0FaoEvapotranspiration.isNotEmpty) {
      map[DailyParameters.et0FaoEvapotranspiration.value] =
          jsonEncode(et0FaoEvapotranspiration);
    }

    return map;
  }
}