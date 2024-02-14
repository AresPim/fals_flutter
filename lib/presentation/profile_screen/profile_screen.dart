import '../profile_screen/widgets/cardcomponent_item_widget.dart';
import 'models/cardcomponent_item_model.dart';
import 'models/profile_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileProvider(), child: ProfileScreen());
  }
}

// ignore_for_file: must_be_immutable
class ProfileScreenState extends State<ProfileScreen> {
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
                  _buildProfile(context),
                  SizedBox(height: 13.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 11.v),
                            child: Text("lbl_news".tr,
                                style: CustomTextStyles.bodyLargeBluegray700)),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Column(children: [
                              Text("lbl_recent".tr,
                                  style: theme.textTheme.bodyLarge),
                              SizedBox(height: 7.v),
                              SizedBox(width: 56.h, child: Divider())
                            ]))
                      ]),
                  SizedBox(height: 20.v),
                  SizedBox(
                      height: 472.v,
                      width: 364.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 100.h, top: 450.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCloseGray400,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text("lbl_wilson_franci".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgIconBlueGray700,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 8.h,
                                              top: 4.v,
                                              bottom: 3.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text("lbl_4h_ago".tr,
                                              style: CustomTextStyles
                                                  .bodyMedium13)),
                                      Spacer(),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIconBlueGray70014x14,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 4.v, bottom: 3.v))
                                    ]))),
                        _buildCardComponent(context)
                      ]))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildBottomBar(context)),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_profile".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconPrimarycontainer,
              margin: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 15.v),
              onTap: () {
                navigateToSetting(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgEllipse13,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(50.h)),
        Padding(
            padding: EdgeInsets.only(left: 16.h, top: 23.v, bottom: 23.v),
            child: Column(children: [
              Text("lbl_2156".tr,
                  style: CustomTextStyles.titleMediumBlack90002_1),
              SizedBox(height: 4.v),
              Text("lbl_followers".tr,
                  style: CustomTextStyles.bodyLargeBluegray700)
            ])),
        Spacer(flex: 50),
        Padding(
            padding: EdgeInsets.only(top: 24.v, bottom: 21.v),
            child: Column(children: [
              Text("lbl_567".tr,
                  style: CustomTextStyles.titleMediumBlack90002_1),
              SizedBox(height: 6.v),
              Text("lbl_following".tr,
                  style: CustomTextStyles.bodyLargeBluegray700)
            ])),
        Spacer(flex: 50),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 23.v),
            child: Column(children: [
              Text("lbl_23".tr,
                  style: CustomTextStyles.titleMediumBlack90002_1),
              SizedBox(height: 4.v),
              Text("lbl_news".tr, style: CustomTextStyles.bodyLargeBluegray700)
            ]))
      ]),
      SizedBox(height: 15.v),
      Text("lbl_wilson_franci".tr,
          style: CustomTextStyles.titleMediumBlack90002_1),
      SizedBox(height: 1.v),
      Container(
          width: 332.h,
          margin: EdgeInsets.only(right: 47.h),
          child: Text("msg_lorem_ipsum_is_simply".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeBluegray700
                  .copyWith(height: 1.50))),
      SizedBox(height: 12.v),
      CustomElevatedButton(
          width: 182.h,
          text: "lbl_edit_profile".tr,
          buttonStyle: CustomButtonStyles.none,
          decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
          onPressed: () {
            navigateToEditProfile(context);
          })
    ]);
  }

  /// Section Widget
  Widget _buildCardComponent(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Consumer<ProfileProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 27.v);
              },
              itemCount: provider.profileModelObj.cardcomponentItemList.length,
              itemBuilder: (context, index) {
                CardcomponentItemModel model =
                    provider.profileModelObj.cardcomponentItemList[index];
                return CardcomponentItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 54,
        width: 54,
        onTap: () {
          navigateToAddPost(context);
        },
        child: CustomImageView(
            imagePath: ImageConstant.imgIconsPlusWhiteA700,
            height: 27.0.v,
            width: 27.0.h));
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

  /// Navigates to the profileSettingsScreen when the action is triggered.
  navigateToSetting(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileSettingsScreen,
    );
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  navigateToEditProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the addpostScreen when the action is triggered.
  navigateToAddPost(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addpostScreen,
    );
  }
}
