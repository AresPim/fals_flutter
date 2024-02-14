import 'models/homepage_container_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'provider/homepage_container_provider.dart';

class HomepageContainerScreen extends StatefulWidget {
  const HomepageContainerScreen({Key? key}) : super(key: key);

  @override
  HomepageContainerScreenState createState() => HomepageContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomepageContainerProvider(),
        child: HomepageContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomepageContainerScreenState extends State<HomepageContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homepagePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Bookmark:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
