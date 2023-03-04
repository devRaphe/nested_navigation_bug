import 'package:nested_navigation_bug/ui/views/main/main_view.dart';
import 'package:nested_navigation_bug/ui/views/post_details/post_details_view.dart';
import 'package:nested_navigation_bug/ui/views/posts/posts_view.dart';
import 'package:nested_navigation_bug/ui/views/startup/startup_view.dart';
import 'package:nested_navigation_bug/ui/views/user_details/user_details_view.dart';
import 'package:nested_navigation_bug/ui/views/users/users_view.dart';
import 'package:stacked/stacked_annotations.dart';

import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(routes: [
  MaterialRoute(page: StartupView),

  MaterialRoute(
    page: MainView,
    initial: true,
    children: [
      MaterialRoute(
        page: PostsView,
        children: [
          MaterialRoute(page: PostDetailsView),
        ],
      ),
      MaterialRoute(
        page: UsersView,
        children: [
          MaterialRoute(page: UserDetailsView),
        ],
      ),
    ],
  ),
  // @stacked-route
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: BottomSheetService),
  // @stacked-service
])
class App {}
