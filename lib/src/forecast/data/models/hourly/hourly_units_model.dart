import 'package:anemoi_weather/src/forecast/data/api_strings.dart';
import 'package:anemoi_weather/src/forecast/data/utils/enum_extensions.dart';
import 'package:anemoi_weather/src/forecast/domain/entities/hourly_units.dart';
import 'package:anemoi_weather/src/forecast/domain/enums/enums.dart';

class HourlyUnitsModel extends HourlyUnits {
  HourlyUnitsModel({
    required super.time,
    super.temperature2M,
    super.relativehumidity2M,
    super.dewpoint2M,
    super.apparentTemperature,
    super.precipitationProbability,
    super.precipitation,
    super.rain,
    super.showers,
    super.snowfall,
    super.snowDepth,
    super.weathercode,
    super.pressureMsl,
    super.surfacePressure,
    super.cloudcover,
    super.cloudcoverLow,
    super.cloudcoverMid,
    super.cloudcoverHigh,
    super.visibility,
    super.evapotranspiration,
    super.et0FaoEvapotranspiration,
    super.vaporPressureDeficit,
    super.windspeed10M,
    super.windspeed80M,
    super.windspeed120M,
    super.windspeed180M,
    super.winddirection10M,
    super.winddirection80M,
    super.winddirection120M,
    super.winddirection180M,
    super.windgusts10M,
    super.temperature80M,
    super.temperature120M,
    super.temperature180M,
    super.soilTemperature0Cm,
    super.soilTemperature6Cm,
    super.soilTemperature18Cm,
    super.soilTemperature54Cm,
    super.soilMoisture0To1Cm,
    super.soilMoisture1To3Cm,
    super.soilMoisture3To9Cm,
    super.soilMoisture9To27Cm,
    super.soilMoisture27To81Cm,
  });

  HourlyUnitsModel.fromDomain(HourlyUnits hourlyUnits)
      : this(
          time: hourlyUnits.time,
          apparentTemperature: hourlyUnits.apparentTemperature,
          cloudcover: hourlyUnits.cloudcover,
          cloudcoverHigh: hourlyUnits.cloudcoverHigh,
          cloudcoverLow: hourlyUnits.cloudcoverLow,
          cloudcoverMid: hourlyUnits.cloudcoverMid,
          dewpoint2M: hourlyUnits.dewpoint2M,
          et0FaoEvapotranspiration: hourlyUnits.et0FaoEvapotranspiration,
          evapotranspiration: hourlyUnits.evapotranspiration,
          precipitation: hourlyUnits.precipitation,
          precipitationProbability: hourlyUnits.precipitationProbability,
          pressureMsl: hourlyUnits.pressureMsl,
          rain: hourlyUnits.rain,
          relativehumidity2M: hourlyUnits.relativehumidity2M,
          showers: hourlyUnits.showers,
          snowDepth: hourlyUnits.snowDepth,
          snowfall: hourlyUnits.snowfall,
          soilMoisture0To1Cm: hourlyUnits.soilMoisture0To1Cm,
          soilMoisture1To3Cm: hourlyUnits.soilMoisture1To3Cm,
          soilMoisture27To81Cm: hourlyUnits.soilMoisture27To81Cm,
          soilMoisture3To9Cm: hourlyUnits.soilMoisture3To9Cm,
          soilMoisture9To27Cm: hourlyUnits.soilMoisture9To27Cm,
          soilTemperature0Cm: hourlyUnits.soilTemperature0Cm,
          soilTemperature18Cm: hourlyUnits.soilTemperature18Cm,
          soilTemperature54Cm: hourlyUnits.soilTemperature54Cm,
          soilTemperature6Cm: hourlyUnits.soilTemperature6Cm,
          surfacePressure: hourlyUnits.surfacePressure,
          temperature120M: hourlyUnits.temperature120M,
          temperature180M: hourlyUnits.temperature180M,
          temperature2M: hourlyUnits.temperature2M,
          temperature80M: hourlyUnits.temperature80M,
          vaporPressureDeficit: hourlyUnits.vaporPressureDeficit,
          visibility: hourlyUnits.visibility,
          weathercode: hourlyUnits.weathercode,
          winddirection10M: hourlyUnits.winddirection10M,
          winddirection120M: hourlyUnits.winddirection120M,
          winddirection180M: hourlyUnits.winddirection180M,
          winddirection80M: hourlyUnits.winddirection80M,
          windgusts10M: hourlyUnits.windgusts10M,
          windspeed10M: hourlyUnits.windspeed10M,
          windspeed120M: hourlyUnits.windspeed120M,
          windspeed180M: hourlyUnits.windspeed180M,
          windspeed80M: hourlyUnits.windspeed80M,
        );

  factory HourlyUnitsModel.fromJson(Map<String, dynamic> json) {
    return HourlyUnitsModel(
      time: json[ApiStrings.time] as String,
      temperature2M: json.containsKey(HourlyParameters.temperature2M.value)
          ? json[HourlyParameters.temperature2M.value] as String
          : null,
      relativehumidity2M:
          json.containsKey(HourlyParameters.relativehumidity2M.value)
              ? json[HourlyParameters.relativehumidity2M.value] as String
              : null,
      dewpoint2M: json.containsKey(HourlyParameters.dewpoint2M.value)
          ? json[HourlyParameters.dewpoint2M.value] as String
          : null,
      apparentTemperature:
          json.containsKey(HourlyParameters.apparentTemperature.value)
              ? json[HourlyParameters.apparentTemperature.value] as String
              : null,
      precipitationProbability:
          json.containsKey(HourlyParameters.precipitationProbability.value)
              ? json[HourlyParameters.precipitationProbability.value] as String
              : null,
      precipitation: json.containsKey(HourlyParameters.precipitation.value)
          ? json[HourlyParameters.precipitation.value] as String
          : null,
      rain: json.containsKey(HourlyParameters.rain.value)
          ? json[HourlyParameters.rain.value] as String
          : null,
      showers: json.containsKey(HourlyParameters.showers.value)
          ? json[HourlyParameters.showers.value] as String
          : null,
      snowfall: json.containsKey(HourlyParameters.snowfall.value)
          ? json[HourlyParameters.snowfall.value] as String
          : null,
      snowDepth: json.containsKey(HourlyParameters.snowDepth.value)
          ? json[HourlyParameters.snowDepth.value] as String
          : null,
      weathercode: json.containsKey(HourlyParameters.weathercode.value)
          ? json[HourlyParameters.weathercode.value] as String
          : null,
      pressureMsl: json.containsKey(HourlyParameters.pressureMsl.value)
          ? json[HourlyParameters.pressureMsl.value] as String
          : null,
      surfacePressure: json.containsKey(HourlyParameters.surfacePressure.value)
          ? json[HourlyParameters.surfacePressure.value] as String
          : null,
      cloudcover: json.containsKey(HourlyParameters.cloudcover.value)
          ? json[HourlyParameters.cloudcover.value] as String
          : null,
      cloudcoverLow: json.containsKey(HourlyParameters.cloudcoverLow.value)
          ? json[HourlyParameters.cloudcoverLow.value] as String
          : null,
      cloudcoverMid: json.containsKey(HourlyParameters.cloudcoverMid.value)
          ? json[HourlyParameters.cloudcoverMid.value] as String
          : null,
      cloudcoverHigh: json.containsKey(HourlyParameters.cloudcoverHigh.value)
          ? json[HourlyParameters.cloudcoverHigh.value] as String
          : null,
      visibility: json.containsKey(HourlyParameters.visibility.value)
          ? json[HourlyParameters.visibility.value] as String
          : null,
      evapotranspiration:
          json.containsKey(HourlyParameters.evapotranspiration.value)
              ? json[HourlyParameters.evapotranspiration.value] as String
              : null,
      et0FaoEvapotranspiration:
          json.containsKey(HourlyParameters.et0FaoEvapotranspiration.value)
              ? json[HourlyParameters.et0FaoEvapotranspiration.value] as String
              : null,
      vaporPressureDeficit:
          json.containsKey(HourlyParameters.vaporPressureDeficit.value)
              ? json[HourlyParameters.vaporPressureDeficit.value] as String
              : null,
      windspeed10M: json.containsKey(HourlyParameters.windspeed10M.value)
          ? json[HourlyParameters.windspeed10M.value] as String
          : null,
      windspeed80M: json.containsKey(HourlyParameters.windspeed80M.value)
          ? json[HourlyParameters.windspeed80M.value] as String
          : null,
      windspeed120M: json.containsKey(HourlyParameters.windspeed120M.value)
          ? json[HourlyParameters.windspeed120M.value] as String
          : null,
      windspeed180M: json.containsKey(HourlyParameters.windspeed180M.value)
          ? json[HourlyParameters.windspeed180M.value] as String
          : null,
      winddirection10M:
          json.containsKey(HourlyParameters.winddirection10M.value)
              ? json[HourlyParameters.winddirection10M.value] as String
              : null,
      winddirection80M:
          json.containsKey(HourlyParameters.winddirection80M.value)
              ? json[HourlyParameters.winddirection80M.value] as String
              : null,
      winddirection120M:
          json.containsKey(HourlyParameters.winddirection120M.value)
              ? json[HourlyParameters.winddirection120M.value] as String
              : null,
      winddirection180M:
          json.containsKey(HourlyParameters.winddirection180M.value)
              ? json[HourlyParameters.winddirection180M.value] as String
              : null,
      windgusts10M: json.containsKey(HourlyParameters.windgusts10M.value)
          ? json[HourlyParameters.windgusts10M.value] as String
          : null,
      temperature80M: json.containsKey(HourlyParameters.temperature80M.value)
          ? json[HourlyParameters.temperature80M.value] as String
          : null,
      temperature120M: json.containsKey(HourlyParameters.temperature120M.value)
          ? json[HourlyParameters.temperature120M.value] as String
          : null,
      temperature180M: json.containsKey(HourlyParameters.temperature180M.value)
          ? json[HourlyParameters.temperature180M.value] as String
          : null,
      soilTemperature0Cm:
          json.containsKey(HourlyParameters.soilTemperature0Cm.value)
              ? json[HourlyParameters.soilTemperature0Cm.value] as String
              : null,
      soilTemperature6Cm:
          json.containsKey(HourlyParameters.soilTemperature6Cm.value)
              ? json[HourlyParameters.soilTemperature6Cm.value] as String
              : null,
      soilTemperature18Cm:
          json.containsKey(HourlyParameters.soilTemperature18Cm.value)
              ? json[HourlyParameters.soilTemperature18Cm.value] as String
              : null,
      soilTemperature54Cm:
          json.containsKey(HourlyParameters.soilTemperature54Cm.value)
              ? json[HourlyParameters.soilTemperature54Cm.value] as String
              : null,
      soilMoisture0To1Cm:
          json.containsKey(HourlyParameters.soilMoisture0To1Cm.value)
              ? json[HourlyParameters.soilMoisture0To1Cm.value] as String
              : null,
      soilMoisture1To3Cm:
          json.containsKey(HourlyParameters.soilMoisture1To3Cm.value)
              ? json[HourlyParameters.soilMoisture1To3Cm.value] as String
              : null,
      soilMoisture3To9Cm:
          json.containsKey(HourlyParameters.soilMoisture3To9Cm.value)
              ? json[HourlyParameters.soilMoisture3To9Cm.value] as String
              : null,
      soilMoisture9To27Cm:
          json.containsKey(HourlyParameters.soilMoisture9To27Cm.value)
              ? json[HourlyParameters.soilMoisture9To27Cm.value] as String
              : null,
      soilMoisture27To81Cm:
          json.containsKey(HourlyParameters.soilMoisture27To81Cm.value)
              ? json[HourlyParameters.soilMoisture27To81Cm.value] as String
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'time': time,
    };

    if (temperature2M != null) {
      map[HourlyParameters.temperature2M.value] = temperature2M;
    }

    if (relativehumidity2M != null) {
      map[HourlyParameters.relativehumidity2M.value] = relativehumidity2M;
    }

    if (dewpoint2M != null) {
      map[HourlyParameters.dewpoint2M.value] = dewpoint2M;
    }

    if (apparentTemperature != null) {
      map[HourlyParameters.apparentTemperature.value] = apparentTemperature;
    }

    if (precipitationProbability != null) {
      map[HourlyParameters.precipitationProbability.value] =
          precipitationProbability;
    }

    if (precipitation != null) {
      map[HourlyParameters.precipitation.value] = precipitation;
    }

    if (rain != null) {
      map[HourlyParameters.rain.value] = rain;
    }

    if (showers != null) {
      map[HourlyParameters.showers.value] = showers;
    }

    if (snowfall != null) {
      map[HourlyParameters.snowfall.value] = snowfall;
    }

    if (snowDepth != null) {
      map[HourlyParameters.snowDepth.value] = snowDepth;
    }

    if (weathercode != null) {
      map[HourlyParameters.weathercode.value] = weathercode;
    }

    if (pressureMsl != null) {
      map[HourlyParameters.pressureMsl.value] = pressureMsl;
    }

    if (surfacePressure != null) {
      map[HourlyParameters.surfacePressure.value] = surfacePressure;
    }

    if (cloudcover != null) {
      map[HourlyParameters.cloudcover.value] = cloudcover;
    }

    if (cloudcoverLow != null) {
      map[HourlyParameters.cloudcoverLow.value] = cloudcoverLow;
    }

    if (cloudcoverMid != null) {
      map[HourlyParameters.cloudcoverMid.value] = cloudcoverMid;
    }

    if (cloudcoverHigh != null) {
      map[HourlyParameters.cloudcoverHigh.value] = cloudcoverHigh;
    }

    if (visibility != null) {
      map[HourlyParameters.visibility.value] = visibility;
    }

    if (evapotranspiration != null) {
      map[HourlyParameters.evapotranspiration.value] = evapotranspiration;
    }

    if (et0FaoEvapotranspiration != null) {
      map[HourlyParameters.et0FaoEvapotranspiration.value] =
          et0FaoEvapotranspiration;
    }

    if (vaporPressureDeficit != null) {
      map[HourlyParameters.vaporPressureDeficit.value] = vaporPressureDeficit;
    }

    if (windspeed10M != null) {
      map[HourlyParameters.windspeed10M.value] = windspeed10M;
    }

    if (windspeed80M != null) {
      map[HourlyParameters.windspeed80M.value] = windspeed80M;
    }

    if (windspeed120M != null) {
      map[HourlyParameters.windspeed120M.value] = windspeed120M;
    }

    if (windspeed180M != null) {
      map[HourlyParameters.winddirection180M.value] = windspeed180M;
    }

    if (winddirection10M != null) {
      map[HourlyParameters.winddirection10M.value] = winddirection10M;
    }

    if (winddirection80M != null) {
      map[HourlyParameters.winddirection80M.value] = winddirection80M;
    }

    if (winddirection120M != null) {
      map[HourlyParameters.winddirection120M.value] = winddirection120M;
    }

    if (winddirection180M != null) {
      map[HourlyParameters.winddirection180M.value] = winddirection180M;
    }

    if (windgusts10M != null) {
      map[HourlyParameters.windgusts10M.value] = windgusts10M;
    }

    if (temperature80M != null) {
      map[HourlyParameters.temperature80M.value] = temperature80M;
    }

    if (temperature120M != null) {
      map[HourlyParameters.temperature120M.value] = temperature120M;
    }

    if (temperature180M != null) {
      map[HourlyParameters.temperature180M.value] = temperature180M;
    }

    if (soilTemperature0Cm != null) {
      map[HourlyParameters.soilTemperature0Cm.value] = soilTemperature0Cm;
    }

    if (soilTemperature6Cm != null) {
      map[HourlyParameters.soilTemperature6Cm.value] = soilTemperature6Cm;
    }

    if (soilTemperature18Cm != null) {
      map[HourlyParameters.soilTemperature18Cm.value] = soilTemperature18Cm;
    }

    if (soilTemperature54Cm != null) {
      map[HourlyParameters.soilTemperature54Cm.value] = soilTemperature54Cm;
    }

    if (soilMoisture0To1Cm != null) {
      map[HourlyParameters.soilMoisture0To1Cm.value] = soilMoisture0To1Cm;
    }

    if (soilMoisture1To3Cm != null) {
      map[HourlyParameters.soilMoisture1To3Cm.value] = soilMoisture1To3Cm;
    }

    if (soilMoisture3To9Cm != null) {
      map[HourlyParameters.soilMoisture3To9Cm.value] = soilMoisture3To9Cm;
    }

    if (soilMoisture9To27Cm != null) {
      map[HourlyParameters.soilMoisture9To27Cm.value] = soilMoisture9To27Cm;
    }

    if (soilMoisture27To81Cm != null) {
      map[HourlyParameters.soilMoisture27To81Cm.value] = soilMoisture27To81Cm;
    }

    return map;
  }
}