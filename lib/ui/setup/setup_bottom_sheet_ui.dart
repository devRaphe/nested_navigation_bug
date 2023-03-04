import 'package:flutter/material.dart';
import 'package:nested_navigation_bug/app/app.locator.dart';
import 'package:nested_navigation_bug/enums/bottom_sheet_type.dart';
import 'package:nested_navigation_bug/ui/bottom_sheets/notice_sheet/notice_sheet.dart';
import 'package:stacked_services/stacked_services.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final Map<
      dynamic,
      Widget Function(BuildContext, SheetRequest<dynamic>,
          void Function(SheetResponse<dynamic>))> builders = {
    BottomSheetType.notice: (context, sheetRequest, completer) =>
        NoticeSheet(completer: completer, request: sheetRequest),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
