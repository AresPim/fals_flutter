import 'models/votes_tab_container_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/detailpost_comment_page/detailpost_comment_page.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/presentation/votes_page/votes_page.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'provider/votes_tab_container_provider.dart';

class VotesTabContainerScreen extends StatefulWidget {
  const VotesTabContainerScreen({Key? key}) : super(key: key);

  @override
  VotesTabContainerScreenState createState() => VotesTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => VotesTabContainerProvider(),
        child: VotesTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class VotesTabContainerScreenState extends State<VotesTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildBbcNews(context),
                  SizedBox(height: 16.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage1248x380,
                      height: 248.v,
                      width: 380.h,
                      radius: BorderRadius.circular(6.h)),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("lbl_europe".tr,
                              style: theme.textTheme.bodyMedium))),
                  SizedBox(height: 2.v),
                  Container(
                      width: 367.h,
                      margin: EdgeInsets.only(left: 29.h, right: 32.h),
                      child: Text("msg_ukraine_s_president2".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineSmall!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 13.v),
                  Container(
                      width: 380.h,
                      margin: EdgeInsets.only(left: 29.h, right: 19.h),
                      child: Text("msg_ukrainian_president2".tr,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeBluegray700
                              .copyWith(height: 1.50))),
                  SizedBox(height: 15.v),
                  _buildDetailPost(context)
                ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconBlueGray70014x14,
              margin: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildBbcNews(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 34.h),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 50.v,
                    width: 394.h,
                    child: Stack(alignment: Alignment.centerRight, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse50x50,
                                    height: 50.adaptSize,
                                    width: 50.adaptSize,
                                    radius: BorderRadius.circular(25.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 4.h, top: 2.v, bottom: 2.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_bbc_news".tr,
                                              style: CustomTextStyles
                                                  .titleMediumBlack90002),
                                          Text("lbl_14m_ago".tr,
                                              style: theme.textTheme.bodyMedium)
                                        ])),
                                Spacer(),
                                Opacity(
                                    opacity: 0.2,
                                    child: OutlineGradientButton(
                                        padding: EdgeInsets.only(
                                            left: 5.h,
                                            top: 5.v,
                                            right: 5.h,
                                            bottom: 5.v),
                                        strokeWidth: 5.h,
                                        gradient: LinearGradient(
                                            begin: Alignment(0.85, 0.13),
                                            end: Alignment(0.17, 0.87),
                                            colors: [
                                              appTheme.purple300
                                                  .withOpacity(0.42),
                                              appTheme.deepOrange1006c
                                            ]),
                                        corners: Corners(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                            bottomLeft: Radius.circular(25),
                                            bottomRight: Radius.circular(25)),
                                        child: Container(
                                            height: 50.adaptSize,
                                            width: 50.adaptSize,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        25.h)))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              margin: EdgeInsets.only(right: 29.h),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: 50.adaptSize,
                                            width: 50.adaptSize,
                                            child: CircularProgressIndicator(
                                                value: 0.5, strokeWidth: 5.h))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 10.v),
                                            child: Text("lbl_truth".tr,
                                                style: theme
                                                    .textTheme.labelSmall))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                right: 7.h, bottom: 11.v),
                                            child: Text("lbl2".tr,
                                                style: theme
                                                    .textTheme.labelMedium))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h, bottom: 5.v),
                                            child: Text("lbl_63".tr,
                                                style: CustomTextStyles
                                                    .titleLargeAbhayaLibreExtraBoldPurple30000)))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildDetailPost(BuildContext context) {
    return SizedBox(
        height: 792.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 99.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 1.v),
                  decoration:
                      BoxDecoration(color: appTheme.whiteA700, boxShadow: [
                    BoxShadow(
                        color: appTheme.black90002.withOpacity(0.05),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(0, -2))
                  ]))),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 27.v,
                  width: 36.h,
                  decoration: BoxDecoration(color: appTheme.whiteA700))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 140.v,
                  width: 310.h,
                  margin: EdgeInsets.only(top: 297.v),
                  decoration: BoxDecoration(color: appTheme.whiteA700))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
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
                                      imagePath:
                                          ImageConstant.imgAvatarGoesHere,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      radius: BorderRadius.circular(12.h),
                                      alignment: Alignment.centerLeft),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgAvatarGoesHere24x24,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      radius: BorderRadius.circular(12.h),
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(left: 16.h)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgAvatarGoesHere1,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      radius: BorderRadius.circular(12.h),
                                      alignment: Alignment.center),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgAvatarGoesHere2,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      radius: BorderRadius.circular(12.h),
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 16.h)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgAvatarGoesHere3,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      radius: BorderRadius.circular(12.h),
                                      alignment: Alignment.centerRight)
                                ])),
                        SizedBox(height: 6.v),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgThumbUpFill,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(top: 3.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h, top: 1.v),
                                  child: Text("lbl_24_5k".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnErrorContainer)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgThumbDownLine,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 18.h, top: 3.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h, top: 1.v),
                                  child: Text("lbl_1k".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnErrorContainer)),
                              Spacer(),
                              CustomImageView(
                                  imagePath: ImageConstant.imgFrame24,
                                  height: 25.v,
                                  width: 34.h)
                            ])),
                        SizedBox(height: 5.v)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                    height: 32.v,
                    width: 374.h,
                    decoration: BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(8.h)),
                    child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: appTheme.blueGray900,
                        labelStyle: TextStyle(
                            fontSize: 14.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500),
                        unselectedLabelColor: appTheme.blueGray900,
                        unselectedLabelStyle: TextStyle(
                            fontSize: 14.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500),
                        indicatorPadding: EdgeInsets.all(2.0.h),
                        indicator: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(7.h),
                            border: Border.all(
                                color: appTheme.indigo50,
                                width: 1.h,
                                strokeAlign: strokeAlignOutside),
                            boxShadow: [
                              BoxShadow(
                                  color: appTheme.blueGray80011,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 1))
                            ]),
                        tabs: [
                          Tab(child: Text("lbl_56_comments".tr)),
                          Tab(child: Text("lbl_60_votes".tr))
                        ])),
                SizedBox(
                    height: 670.v,
                    child: TabBarView(controller: tabviewController, children: [
                      DetailpostCommentPage.builder(context),
                      VotesPage.builder(context)
                    ]))
              ]))
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
