import '../trending_screen/widgets/cardcomponentlist_item_widget.dart';
import 'models/cardcomponentlist_item_model.dart';
import 'models/trending_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'provider/trending_provider.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  TrendingScreenState createState() => TrendingScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TrendingProvider(), child: TrendingScreen());
  }
}

// ignore_for_file: must_be_immutable
class TrendingScreenState extends State<TrendingScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 1.v),
                  _buildCardComponentList(context)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_trending".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconBlueGray70014x14,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 17.v))
        ]);
  }

  /// Section Widget
  Widget _buildCardComponentList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child:
                Consumer<TrendingProvider>(builder: (context, provider, child) {
              return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 16.v);
                  },
                  itemCount: provider
                      .trendingModelObj.cardcomponentlistItemList.length,
                  itemBuilder: (context, index) {
                    CardcomponentlistItemModel model = provider
                        .trendingModelObj.cardcomponentlistItemList[index];
                    return CardcomponentlistItemWidget(model);
                  });
            })));
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
        return AppRoutes.chatbotScreen;
      case BottomBarEnum.Bookmark:
        return AppRoutes.bookmarkScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
