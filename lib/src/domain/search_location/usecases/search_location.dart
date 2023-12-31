import 'package:anemoi_weather/src/domain/core/types/typedef.dart';
import 'package:anemoi_weather/src/domain/core/usecase/usecase.dart';
import 'package:anemoi_weather/src/domain/search_location/entities/geocoding_search_results.dart';
import 'package:anemoi_weather/src/domain/search_location/repositories/geocoding_search_repository.dart';
import 'package:equatable/equatable.dart';

class SearchLocation
    extends UsecaseWithParams<GeocodingSearchResults, SearchLocationParams> {
  SearchLocation(this._repo);
  final GeocodingSearchRepository _repo;

  @override
  ResultFuture<GeocodingSearchResults> call(SearchLocationParams params) async {
    return _repo.search(params.name, params.count, params.languageCode);
  }
}

class SearchLocationParams extends Equatable {
  const SearchLocationParams({
    required this.name,
    required this.count,
    required this.languageCode,
  });
  final String name;
  final int count;
  final String languageCode;

  @override
  List<Object?> get props => [];
}
