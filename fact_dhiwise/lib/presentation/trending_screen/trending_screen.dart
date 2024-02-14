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
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(children: [
                  _buildCardsOne(context),
                  SizedBox(height: 16.v),
                  _buildCardsTwo(context),
                  SizedBox(height: 16.v),
                  _buildCardsThree(context)
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
            margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_trending".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconBlueGray70014x14,
              margin: EdgeInsets.fromLTRB(24.h, 15.v, 24.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildCardsOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage1183x364,
                  height: 183.v,
                  width: 364.h,
                  radius: BorderRadius.circular(6.h)),
              SizedBox(height: 9.v),
              Text("lbl_europe".tr, style: CustomTextStyles.bodyMedium13),
              SizedBox(height: 4.v),
              Text("msg_russian_warship".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 1.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUserWhiteA700,
                      height: 20.adaptSize,
                      width: 20.adaptSize),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("lbl_bbc_news".tr,
                          style: theme.textTheme.labelLarge)),
                  Container(
                      width: 65.h,
                      margin: EdgeInsets.only(left: 12.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIconBlueGray700,
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_4h_ago".tr,
                                    style: CustomTextStyles.bodyMedium13))
                          ]))
                ]),
                CustomImageView(
                    imagePath: ImageConstant.imgIconBlueGray70014x14,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 3.v))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildCardsTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
        decoration: AppDecoration.outlineBlack90002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              CustomImageView(
                  imagePath: ImageConstant.imgImage2183x364,
                  height: 183.v,
                  width: 364.h,
                  radius: BorderRadius.circular(6.h)),
              SizedBox(height: 9.v),
              Text("lbl_europe".tr, style: CustomTextStyles.bodyMedium13),
              SizedBox(height: 3.v),
              Container(
                  width: 335.h,
                  margin: EdgeInsets.only(right: 28.h),
                  child: Text("msg_ukraine_s_president2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUserWhiteA700,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, bottom: 1.v),
                      child: Text("lbl_bbc_news".tr,
                          style: theme.textTheme.labelLarge)),
                  CustomImageView(
                      imagePath: ImageConstant.imgIconBlueGray700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin:
                          EdgeInsets.only(left: 12.h, top: 3.v, bottom: 4.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("lbl_14m_ago".tr,
                          style: CustomTextStyles.bodyMedium13))
                ]),
                CustomImageView(
                    imagePath: ImageConstant.imgIconBlueGray70014x14,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(top: 3.v, bottom: 4.v))
              ])
            ]));
  }

  /// Section Widget
  Widget _buildCardsThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        decoration: AppDecoration.outlineBlack90002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.v),
              CustomImageView(
                  imagePath: ImageConstant.imgImage3183x364,
                  height: 183.v,
                  width: 364.h,
                  radius: BorderRadius.circular(6.h)),
              SizedBox(height: 2.v),
              Text("lbl_europe".tr, style: CustomTextStyles.bodyMedium13),
              SizedBox(height: 19.v),
              Text("msg_her_train_broke3".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 71.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse1x57,
                    height: 1.v,
                    width: 57.h,
                    radius: BorderRadius.circular(28.h)),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child:
                        Text("lbl_cnn".tr, style: theme.textTheme.labelLarge)),
                CustomImageView(
                    imagePath: ImageConstant.imgIconBlueGray700,
                    height: 1.v,
                    width: 14.h,
                    margin: EdgeInsets.only(left: 12.h, top: 3.v)),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text("lbl_1h_ago".tr,
                        style: CustomTextStyles.bodyMedium13)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgIconBlueGray70014x14,
                    height: 1.v,
                    width: 14.h,
                    margin: EdgeInsets.only(top: 3.v))
              ])
            ]));
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
