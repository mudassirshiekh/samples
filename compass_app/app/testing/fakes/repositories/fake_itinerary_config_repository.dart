import 'package:compass_app/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:compass_app/utils/result.dart';
import 'package:compass_model/src/model/itinerary_config/itinerary_config.dart';
import 'package:flutter/foundation.dart';

class FakeItineraryConfigRepository implements ItineraryConfigRepository {
  FakeItineraryConfigRepository({this.itineraryConfig});

  ItineraryConfig? itineraryConfig;

  @override
  Future<Result<ItineraryConfig>> getItineraryConfig() {
    return SynchronousFuture(
        Result.ok(itineraryConfig ?? const ItineraryConfig()));
  }

  @override
  Future<Result<void>> setItineraryConfig(ItineraryConfig itineraryConfig) {
    this.itineraryConfig = itineraryConfig;
    return SynchronousFuture(Result.ok(null));
  }
}