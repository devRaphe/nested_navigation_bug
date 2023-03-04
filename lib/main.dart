import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:nested_navigation_bug/app/app.locator.dart';
import 'package:nested_navigation_bug/app/app.router.dart';
import 'package:nested_navigation_bug/ui/common/app_colors.dart';
import 'package:nested_navigation_bug/ui/setup/setup_bottom_sheet_ui.dart';
import 'package:nested_navigation_bug/ui/setup/setup_dialog_ui.dart';

/// HELLO DANE, I HOPE YOU'RE WELL.
/// SO HERE IS THE REQUIRED APP THAT I MADE TO DEMONSTRATE A PROBLEM THAT I'M HAVING. I'VE TRIED TO KEEP IT AS SIMPLE AS POSSIBLE.
///  - FIRST ISSUE IS THAT I CAN'T NAVIGATE TO A NESTED VIEW WITH A NAMED ROUTE, ONLY WIDGET ROUTING WORKS.

///  - SECOND ISSUE IS THAT WHEN THE APP STARTS FROM THE [StartupView]
///  AND NAVIGATES TO THE [MainView], AN ERROR IS THROWN WHICH IS
///  "Multiple widgets used the same GlobalKey."
///  BUT WHEN APP'S INITIAL ROUTE IS SET TO [MainView] THEN THE ERROR IS NOT THROWN.

///  I BELIEVE THIS SECOND ERROR HAS TO STILL DO WITH THE WAY
///  THE NESTED NAVIGATION IS SETUP.

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Theme.of(context).copyWith(
        primaryColor: kcBackgroundColor,
        focusColor: kcPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
      initialRoute: Routes.mainView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}
