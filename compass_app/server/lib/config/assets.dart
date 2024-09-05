import 'dart:convert';
import 'dart:io';

import 'package:compass_model/model.dart';

class Assets {
  static const _activities = '../app/assets/activities.json';
  static const _destinations = '../app/assets/destinations.json';

  static final List<Destination> destinations =
      (json.decode(File(Assets._destinations).readAsStringSync()) as List)
          .map((element) => Destination.fromJson(element))
          .toList();
  static final List<Activity> activities =
      (json.decode(File(Assets._activities).readAsStringSync()) as List)
          .map((element) => Activity.fromJson(element))
          .toList();
}
