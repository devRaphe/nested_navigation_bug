import 'package:nested_navigation_bug/app/app.locator.dart';
import 'package:nested_navigation_bug/app/app.router.dart';
import 'package:nested_navigation_bug/app/router_ids.dart';

import 'package:nested_navigation_bug/models/user_model.dart';
import 'package:nested_navigation_bug/ui/views/user_details/user_details_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UsersViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  List<User> get users => usersData;

  /// This is the only way that works to navigate to a nested view from a parent view.
  /// Uncomment this line to find out.
  // void onUserTap(User user) {
  //   _navigationService.navigateWithTransition(
  //     UserDetailsView(user: user),
  //     id: userRouterId,
  //     transitionStyle: Transition.rightToLeftWithFade,
  //   );
  // }

  void onUserTap(User user) {
    _navigationService.navigateTo(
      UsersViewRoutes.userDetailsView,
      arguments: NestedUserDetailsViewArguments(user: user),
      id: userRouterId,
    );
  }

  // void onUserTap(User user) {
  //   _navigationService.replaceWith(
  //     UsersViewRoutes.userDetailsView,
  // arguments: NestedUserDetailsViewArguments(user: user),
  //     id: userRouterId,
  //   );
  // }

  // void onUserTap(User user) {
  //   _navigationService.navigateToNestedUserDetailsViewInUsersView(
  //     user: user,
  //     routerId: userRouterId,
  //   );
  // }
}
