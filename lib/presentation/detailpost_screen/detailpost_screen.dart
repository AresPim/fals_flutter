//import 'models/detailpost_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'provider/detailpost_provider.dart';

class DetailpostScreen extends StatefulWidget {
  const DetailpostScreen({Key? key}) : super(key: key);

  @override
  DetailpostScreenState createState() => DetailpostScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DetailpostProvider(), child: DetailpostScreen());
  }
}

// ignore_for_file: must_be_immutable
class DetailpostScreenState extends State<DetailpostScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 24.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 16.v),
                      _buildBbcNews(context)
                    ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 24.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconBlueGray70014x14,
              margin: EdgeInsets.symmetric(horizontal: 24.h),
              onTap: () {
                navigateToDetailPostSettings(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildBbcNews(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 818.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 50.v,
                                    width: 399.h,
                                    margin: EdgeInsets.only(left: 5.h),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse50x50,
                                                        height: 50.adaptSize,
                                                        width: 50.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(25.h)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h,
                                                                top: 2.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_bbc_news"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .titleMediumBlack90002_1),
                                                              Text(
                                                                  "lbl_14m_ago"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyMedium)
                                                            ])),
                                                    Spacer(),
                                                    Opacity(
                                                        opacity: 0.2,
                                                        child: OutlineGradientButton(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 5.h,
                                                                    top: 5.v,
                                                                    right: 5.h,
                                                                    bottom:
                                                                        5.v),
                                                            strokeWidth: 5.h,
                                                            gradient: LinearGradient(
                                                                begin: Alignment(
                                                                    0.85, 0.13),
                                                                end: Alignment(0.17, 0.87),
                                                                colors: [
                                                                  appTheme
                                                                      .purple300
                                                                      .withOpacity(
                                                                          0.42),
                                                                  appTheme
                                                                      .deepOrange1006c
                                                                ]),
                                                            corners: Corners(
                                                                topLeft:
                                                                    Radius.circular(
                                                                        25),
                                                                topRight:
                                                                    Radius.circular(
                                                                        25),
                                                                bottomLeft:
                                                                    Radius.circular(25),
                                                                bottomRight: Radius.circular(25)),
                                                            child: Container(height: 50.adaptSize, width: 50.adaptSize, decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.h)))))
                                                  ])),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: 50.adaptSize,
                                                  width: 50.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      right: 34.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: 50
                                                                    .adaptSize,
                                                                width: 50
                                                                    .adaptSize,
                                                                child: CircularProgressIndicator(
                                                                    value: 0.5,
                                                                    strokeWidth:
                                                                        5.h))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 9
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_truth"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .labelSmallPurple30000))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 18
                                                                            .v),
                                                                child: Text(
                                                                    "lbl2".tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelSmall))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 3
                                                                            .v),
                                                                child: Text(
                                                                    "lbl_63".tr,
                                                                    style: CustomTextStyles
                                                                        .titleLargeAbhayaLibreExtraBoldPink10000)))
                                                      ])))
                                        ])),
                                SizedBox(height: 20.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage1248x380,
                                    height: 248.v,
                                    width: 380.h,
                                    radius: BorderRadius.circular(6.h)),
                                SizedBox(height: 17.v),
                                Text("lbl_europe".tr,
                                    style: theme.textTheme.bodyMedium),
                                SizedBox(height: 2.v),
                                Container(
                                    width: 367.h,
                                    margin: EdgeInsets.only(right: 36.h),
                                    child: Text("msg_ukraine_s_president2".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.headlineSmall!
                                            .copyWith(height: 1.50))),
                                SizedBox(height: 17.v),
                                Container(
                                    width: 380.h,
                                    margin: EdgeInsets.only(right: 24.h),
                                    child: Text("msg_ukrainian_president".tr,
                                        maxLines: 12,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyLargeBluegray700
                                            .copyWith(height: 1.50)))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 734.v, bottom: 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 38.h, vertical: 26.v),
                          decoration: AppDecoration.outlineBlack90002,
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgThumbUpFill,
                                height: 22.adaptSize,
                                width: 22.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_24_5k".tr,
                                    style: CustomTextStyles
                                        .bodyLargePrimaryContainer)),
                            Spacer(flex: 14),
                            CustomImageView(
                                imagePath: ImageConstant.imgThumbDownLine,
                                height: 22.adaptSize,
                                width: 22.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_1k".tr,
                                    style: CustomTextStyles
                                        .bodyLargePrimaryContainer)),
                            Spacer(flex: 85),
                            CustomImageView(
                                imagePath: ImageConstant.imgNavBookmark24x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(right: 8.h))
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 23.h, vertical: 12.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 24.v,
                                    width: 88.h,
                                    margin: EdgeInsets.only(left: 7.h),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAvatarGoesHere,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              radius:
                                                  BorderRadius.circular(12.h),
                                              alignment: Alignment.centerLeft),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAvatarGoesHere24x24,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              radius:
                                                  BorderRadius.circular(12.h),
                                              alignment: Alignment.centerLeft,
                                              margin:
                                                  EdgeInsets.only(left: 16.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAvatarGoesHere1,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              radius:
                                                  BorderRadius.circular(12.h),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAvatarGoesHere2,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              radius:
                                                  BorderRadius.circular(12.h),
                                              alignment: Alignment.centerRight,
                                              margin:
                                                  EdgeInsets.only(right: 16.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAvatarGoesHere3,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              radius:
                                                  BorderRadius.circular(12.h),
                                              alignment: Alignment.centerRight)
                                        ])),
                                SizedBox(height: 6.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgThumbUpFill,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(top: 3.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.h, top: 1.v),
                                          child: Text("lbl_24_5k".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumPrimaryContainer15)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgThumbDownLine,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 18.h, top: 3.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.h, top: 1.v),
                                          child: Text("lbl_1k".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumPrimaryContainer15)),
                                      Spacer(),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFrame24,
                                          height: 25.v,
                                          width: 34.h)
                                    ])),
                                SizedBox(height: 4.v)
                              ])))
                ]))));
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

  /// Navigates to the detailpostSettingsScreen when the action is triggered.
  navigateToDetailPostSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailpostSettingsScreen,
    );
  }
}
