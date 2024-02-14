import '../detailscreen_two_screen/widgets/cardcomponent1_item_widget.dart';
import 'models/cardcomponent1_item_model.dart';
import 'models/detailscreen_two_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'provider/detailscreen_two_provider.dart';

class DetailscreenTwoScreen extends StatefulWidget {
  const DetailscreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DetailscreenTwoScreenState createState() => DetailscreenTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailscreenTwoProvider(),
      child: DetailscreenTwoScreen(),
    );
  }
}

class DetailscreenTwoScreenState extends State<DetailscreenTwoScreen> {
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
          child: Column(
            children: [
              _buildProfile(context),
              SizedBox(height: 13.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 11.v),
                    child: Text(
                      "lbl_news".tr,
                      style: CustomTextStyles.bodyLargeBluegray700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      children: [
                        Text(
                          "lbl_recent".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          width: 56.h,
                          child: Divider(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              _buildCardComponent(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: _buildBottomBar(context),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_profile".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOnerrorcontainer24x24,
          margin: EdgeInsets.fromLTRB(24.h, 16.v, 24.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse13,
              height: 100.adaptSize,
              width: 100.adaptSize,
              radius: BorderRadius.circular(
                50.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 23.v,
                bottom: 23.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_2156".tr,
                    style: CustomTextStyles.titleMediumBlack90002,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_followers".tr,
                    style: CustomTextStyles.bodyLargeBluegray700,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 50,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 24.v,
                bottom: 21.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_567".tr,
                    style: CustomTextStyles.titleMediumBlack90002,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_following".tr,
                    style: CustomTextStyles.bodyLargeBluegray700,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 23.v),
              child: Column(
                children: [
                  Text(
                    "lbl_23".tr,
                    style: CustomTextStyles.titleMediumBlack90002,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_news".tr,
                    style: CustomTextStyles.bodyLargeBluegray700,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15.v),
        Text(
          "lbl_wilson_franci".tr,
          style: CustomTextStyles.titleMediumBlack90002,
        ),
        SizedBox(height: 1.v),
        Container(
          width: 332.h,
          margin: EdgeInsets.only(right: 47.h),
          child: Text(
            "msg_lorem_ipsum_is_simply".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeBluegray700.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        CustomElevatedButton(
          width: 182.h,
          text: "lbl_edit_profile2".tr,
          buttonStyle: CustomButtonStyles.none,
          decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardComponent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Consumer<DetailscreenTwoProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 27.v,
              );
            },
            itemCount:
                provider.detailscreenTwoModelObj.cardcomponent1ItemList.length,
            itemBuilder: (context, index) {
              Cardcomponent1ItemModel model = provider
                  .detailscreenTwoModelObj.cardcomponent1ItemList[index];
              return Cardcomponent1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 54,
      width: 54,
      child: CustomImageView(
        imagePath: ImageConstant.imgIconsPlusWhiteA700,
        height: 27.0.v,
        width: 27.0.h,
      ),
    );
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
