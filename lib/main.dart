import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:nested_navigation_bug/app/app.locator.dart';
import 'package:nested_navigation_bug/app/app.router.dart';
import 'package:nested_navigation_bug/ui/common/app_colors.dart';
import 'package:nested_navigation_bug/ui/setup/setup_bottom_sheet_ui.dart';
import 'package:nested_navigation_bug/ui/setup/setup_dialog_ui.dart';

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
