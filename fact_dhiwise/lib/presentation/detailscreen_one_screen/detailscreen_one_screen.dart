import 'models/detailscreen_one_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'provider/detailscreen_one_provider.dart';

class DetailscreenOneScreen extends StatefulWidget {
  const DetailscreenOneScreen({Key? key}) : super(key: key);

  @override
  DetailscreenOneScreenState createState() => DetailscreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DetailscreenOneProvider(),
        child: DetailscreenOneScreen());
  }
}

class DetailscreenOneScreenState extends State<DetailscreenOneScreen> {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrameEightySix(context),
                      SizedBox(height: 48.v),
                      _buildFrameEightyNine(context,
                          iconImage: ImageConstant.imgIcon8,
                          help: "lbl_security".tr),
                      SizedBox(height: 46.v),
                      _buildFrameEightyNine(context,
                          iconImage: ImageConstant.imgIcon9,
                          help: "lbl_help".tr),
                      SizedBox(height: 45.v),
                      _buildFrameEightyEight(context),
                      SizedBox(height: 47.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIcon11,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 2.v),
                            child: Text("lbl_logout".tr,
                                style: theme.textTheme.bodyLarge))
                      ]),
                      SizedBox(height: 5.v)
                    ]))));
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
        title: AppbarSubtitle(text: "lbl_settings".tr));
  }

  /// Section Widget
  Widget _buildFrameEightySix(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomImageView(
            imagePath: ImageConstant.imgIcon7,
            height: 24.adaptSize,
            width: 24.adaptSize),
        Padding(
            padding: EdgeInsets.only(left: 4.h),
            child:
                Text("lbl_notification".tr, style: theme.textTheme.bodyLarge))
      ]),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray700,
          height: 24.adaptSize,
          width: 24.adaptSize)
    ]);
  }

  /// Section Widget
  Widget _buildFrameEightyEight(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomImageView(
            imagePath: ImageConstant.imgIcon10,
            height: 24.adaptSize,
            width: 24.adaptSize),
        Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text("lbl_dark_mode".tr, style: theme.textTheme.bodyLarge))
      ]),
      Selector<DetailscreenOneProvider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch,
          builder: (context, isSelectedSwitch, child) {
            return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<DetailscreenOneProvider>()
                      .changeSwitchBox1(value);
                });
          })
    ]);
  }

  /// Common widget
  Widget _buildFrameEightyNine(
    BuildContext context, {
    required String iconImage,
    required String help,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: iconImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v)),
      Padding(
          padding: EdgeInsets.only(left: 4.h, top: 2.v),
          child: Text(help,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.black90002))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray700,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
