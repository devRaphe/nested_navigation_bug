import 'package:nested_navigation_bug/app/router_ids.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MainViewModel extends IndexTrackingViewModel {
  final postNavigationKey = StackedService.nestedNavigationKey(postRouterId);
  final userNavigationKey = StackedService.nestedNavigationKey(userRouterId);
}
