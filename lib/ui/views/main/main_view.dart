import 'package:flutter/material.dart';
import 'package:nested_navigation_bug/app/app.router.dart';
import 'package:stacked/stacked.dart';

import 'main_viewmodel.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      builder: (context, model, child) => WillPopScope(
        onWillPop: () async {
          // If it's not on the first route in the bottom nav bar
          if (model.currentIndex != 0) {
            // Then pop to the first index
            model.setIndex(0);

            // And return false to prevent the default behavior of a back button
            return false;
          }
          // Let the default behavior handle the back button tap
          return true;
        },
        child: Scaffold(
          body: IndexedStack(
            index: model.currentIndex,
            children: [
              _PageBuilder(
                navigatorKey: model.postNavigationKey,
                initialRoute: MainViewRoutes.postsView,
              ),
              _PageBuilder(
                navigatorKey: model.userNavigationKey,
                initialRoute: MainViewRoutes.usersView,
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[400],
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'Posts',
                icon: Icon(Icons.list_alt),
              ),
              BottomNavigationBarItem(
                label: 'Users',
                icon: Icon(Icons.people),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: MainViewModel.new,
    );
  }
}

class _PageBuilder extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final String initialRoute;
  const _PageBuilder(
      {super.key, required this.navigatorKey, required this.initialRoute});
  @override
  Widget build(
    BuildContext context,
  ) {
    return ExtendedNavigator(
      navigatorKey: navigatorKey,
      router: MainViewRouter(),
      initialRoute: initialRoute,
    );
  }
}
