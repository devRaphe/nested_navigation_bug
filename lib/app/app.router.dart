// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:flutter/material.dart';
import 'package:nested_navigation_bug/models/post_model.dart' as _i8;
import 'package:nested_navigation_bug/models/user_model.dart' as _i10;
import 'package:nested_navigation_bug/ui/views/main/main_view.dart' as _i3;
import 'package:nested_navigation_bug/ui/views/post_details/post_details_view.dart'
    as _i6;
import 'package:nested_navigation_bug/ui/views/posts/posts_view.dart' as _i4;
import 'package:nested_navigation_bug/ui/views/startup/startup_view.dart'
    as _i2;
import 'package:nested_navigation_bug/ui/views/user_details/user_details_view.dart'
    as _i9;
import 'package:nested_navigation_bug/ui/views/users/users_view.dart' as _i5;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i11;

class Routes {
  static const startupView = '/startup-view';

  static const mainView = '/';

  static const all = <String>{
    startupView,
    mainView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startupView,
      page: _i2.StartupView,
    ),
    _i1.RouteDef(
      Routes.mainView,
      page: _i3.MainView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartupView(),
        settings: data,
      );
    },
    _i3.MainView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.MainView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class MainViewRoutes {
  static const postsView = '/posts-view';

  static const usersView = '/users-view';

  static const all = <String>{
    postsView,
    usersView,
  };
}

class MainViewRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      MainViewRoutes.postsView,
      page: _i4.PostsView,
    ),
    _i1.RouteDef(
      MainViewRoutes.usersView,
      page: _i5.UsersView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i4.PostsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.PostsView(),
        settings: data,
      );
    },
    _i5.UsersView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.UsersView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class PostsViewRoutes {
  static const postDetailsView = '/post-details-view';

  static const all = <String>{postDetailsView};
}

class PostsViewRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      PostsViewRoutes.postDetailsView,
      page: _i6.PostDetailsView,
    )
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i6.PostDetailsView: (data) {
      final args = data.getArgs<NestedPostDetailsViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.PostDetailsView(key: args.key, post: args.post),
        settings: data,
      );
    }
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class NestedPostDetailsViewArguments {
  const NestedPostDetailsViewArguments({
    this.key,
    required this.post,
  });

  final _i7.Key? key;

  final _i8.Post post;
}

class UsersViewRoutes {
  static const userDetailsView = '/user-details-view';

  static const all = <String>{userDetailsView};
}

class UsersViewRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      UsersViewRoutes.userDetailsView,
      page: _i9.UserDetailsView,
    )
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i9.UserDetailsView: (data) {
      final args = data.getArgs<NestedUserDetailsViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i9.UserDetailsView(key: args.key, user: args.user),
        settings: data,
      );
    }
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class NestedUserDetailsViewArguments {
  const NestedUserDetailsViewArguments({
    this.key,
    required this.user,
  });

  final _i7.Key? key;

  final _i10.User user;
}

extension NavigatorStateExtension on _i11.NavigationService {
  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedPostsViewInMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(MainViewRoutes.postsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedUsersViewInMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(MainViewRoutes.usersView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedPostDetailsViewInPostsView({
    _i7.Key? key,
    required _i8.Post post,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(PostsViewRoutes.postDetailsView,
        arguments: NestedPostDetailsViewArguments(key: key, post: post),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNestedUserDetailsViewInUsersView({
    _i7.Key? key,
    required _i10.User user,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(UsersViewRoutes.userDetailsView,
        arguments: NestedUserDetailsViewArguments(key: key, user: user),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mainView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedPostsViewInMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(MainViewRoutes.postsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedUsersViewInMainView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(MainViewRoutes.usersView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedPostDetailsViewInPostsView({
    _i7.Key? key,
    required _i8.Post post,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(PostsViewRoutes.postDetailsView,
        arguments: NestedPostDetailsViewArguments(key: key, post: post),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNestedUserDetailsViewInUsersView({
    _i7.Key? key,
    required _i10.User user,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(UsersViewRoutes.userDetailsView,
        arguments: NestedUserDetailsViewArguments(key: key, user: user),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
