import '../homepage_page/widgets/cardlist_item_widget.dart';
import 'models/cardlist_item_model.dart';
import 'models/homepage_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/homepage_provider.dart';

class HomepagePage extends StatefulWidget {
  const HomepagePage({Key? key}) : super(key: key);

  @override
  HomepagePageState createState() => HomepagePageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomepageProvider(), child: HomepagePage());
  }
}

class HomepagePageState extends State<HomepagePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
            width: SizeUtils.width,
            child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 29.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: _buildLatestFrame(context,
                          latestText: "lbl_trending".tr,
                          seeAllText: "lbl_see_all".tr, onTapSeeAllText: () {
                        navigateToTrending(context);
                      })),
                  SizedBox(height: 14.v),
                  _buildCards(context),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: _buildLatestFrame(context,
                          latestText: "lbl_latest".tr,
                          seeAllText: "lbl_see_all".tr)),
                  SizedBox(height: 15.v),
                  _buildAllScroll(context),
                  SizedBox(height: 23.v),
                  _buildCardList(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 123.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.img42099653225686,
            margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgSearchGray900,
              margin: EdgeInsets.only(left: 26.h, top: 12.v, right: 12.h),
              onTap: () {
                navigateToSearch(context);
              }),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.only(left: 2.h, top: 12.v, right: 38.h),
              onTap: () {
                navigateToNotification(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildCards(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack900021
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 183.v,
                  width: 364.h,
                  radius: BorderRadius.circular(6.h)),
              SizedBox(height: 7.v),
              Text("lbl_verified".tr, style: CustomTextStyles.bodyMedium13),
              SizedBox(height: 6.v),
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
                  CustomImageView(
                      imagePath: ImageConstant.imgIconBlueGray700,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      margin:
                          EdgeInsets.only(left: 12.h, top: 3.v, bottom: 3.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("lbl_4h_ago".tr,
                          style: CustomTextStyles.bodyMedium13))
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
  Widget _buildAllScroll(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 24.h),
            child: IntrinsicWidth(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Column(children: [
                          Text("lbl_all".tr, style: theme.textTheme.bodyLarge),
                          SizedBox(height: 7.v),
                          Container(
                              height: 2.v,
                              width: 19.h,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment(0, 0),
                                      end: Alignment(1.07, 1.65),
                                      colors: [
                                    theme.colorScheme.primary,
                                    appTheme.redA10001
                                  ])))
                        ]),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h, bottom: 7.v),
                            child: Text("lbl_sports".tr,
                                style: CustomTextStyles.bodyLargeBluegray700)),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h, bottom: 10.v),
                            child: Text("lbl_politics".tr,
                                style: CustomTextStyles.bodyLargeBluegray700)),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h, bottom: 10.v),
                            child: Text("lbl_bussiness".tr,
                                style: CustomTextStyles.bodyLargeBluegray700)),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h, bottom: 9.v),
                            child: Text("lbl_health".tr,
                                style: CustomTextStyles.bodyLargeBluegray700)),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h, bottom: 9.v),
                            child: Text("lbl_travel".tr,
                                style: CustomTextStyles.bodyLargeBluegray700))
                      ])),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h, bottom: 10.v),
                      child: Text("lbl_science".tr,
                          style: CustomTextStyles.bodyLargeBluegray700)),
                  Padding(
                      padding: EdgeInsets.only(left: 11.h, bottom: 10.v),
                      child: Text("lbl_fashion".tr,
                          style: CustomTextStyles.bodyLargeBluegray700))
                ]))));
  }

  /// Section Widget
  Widget _buildCardList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Consumer<HomepageProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 30.v);
              },
              itemCount: provider.homepageModelObj.cardlistItemList.length,
              itemBuilder: (context, index) {
                CardlistItemModel model =
                    provider.homepageModelObj.cardlistItemList[index];
                return CardlistItemWidget(model);
              });
        }));
  }

  /// Common widget
  Widget _buildLatestFrame(
    BuildContext context, {
    required String latestText,
    required String seeAllText,
    Function? onTapSeeAllText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(latestText,
              style: CustomTextStyles.titleLargeBlack90002
                  .copyWith(color: appTheme.black90002)),
          GestureDetector(
              onTap: () {
                onTapSeeAllText!.call();
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 5.v),
                  child: Text(seeAllText,
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: appTheme.blueGray700))))
        ]);
  }

  /// Navigates to the searchScreen when the action is triggered.
  navigateToSearch(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchScreen,
    );
  }

  /// Navigates to the notificationScreen when the action is triggered.
  navigateToNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the trendingScreen when the action is triggered.
  navigateToTrending(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trendingScreen,
    );
  }
}
