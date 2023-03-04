import 'package:nested_navigation_bug/app/app.locator.dart';
import 'package:nested_navigation_bug/app/app.router.dart';
import 'package:nested_navigation_bug/app/router_ids.dart';
import 'package:nested_navigation_bug/models/post_model.dart';
import 'package:nested_navigation_bug/ui/views/post_details/post_details_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PostsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  List<Post> get posts => postsData;

  /// This is the only way that works to navigate to a nested view from a parent view.
  /// Uncomment this line to find out.
  // void onPostTap(Post post) {
  //   _navigationService.navigateWithTransition(
  //     PostDetailsView(post: post),
  //     id: postRouterId,
  //     transitionStyle: Transition.leftToRightWithFade,
  //   );
  // }
  void onPostTap(Post post) {
    _navigationService.navigateTo(
      PostsViewRoutes.postDetailsView,
      id: postRouterId,
      arguments: NestedPostDetailsViewArguments(post: post),
    );
  }

  // void onPostTap(Post post) {
  //   _navigationService.replaceWith(
  //     PostsViewRoutes.postDetailsView,
  //     id: postRouterId,
  //     arguments: NestedPostDetailsViewArguments(post: post),
  //   );
  // }

  // void onPostTap(Post post) {
  //   _navigationService.navigateToNestedPostDetailsViewInPostsView(
  //     post: post,
  //     routerId: postRouterId,
  //   );
  // }
}
