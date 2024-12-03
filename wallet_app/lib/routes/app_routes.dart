import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/home_screen/home_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String statisticScreen = '/statistic_screen';

// static const String contactScreen = '/contact_screen';

// static const String transferScreen = '/transfer_screen';

// static const String succesScreen = '/succes_screen';

// static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        homeScreen: HomeScreen.builder,
// statisticScreen: StatisticScreen.builder,
// contactScreen: ContactScreen.builder,
// transferScreen: TransferScreen.builder,
// succesScreen: SuccesScreen.builder,
// appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: HomeScreen.builder
      };
}
