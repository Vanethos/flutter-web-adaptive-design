import 'package:adaptive_design/ui/screens/home/widgets/desktop_home_page.dart';
import 'package:adaptive_design/ui/screens/home/widgets/mobile_home_page.dart';
import 'package:adaptive_design/ui/widgets/adaptive_page_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptivePageBuilder(builder: (context, type) {
      if (type == DeviceTypeEnum.mobile) {
        return MobileHomePage();
      }
      return DesktopHomePage();
    });
  }
}
