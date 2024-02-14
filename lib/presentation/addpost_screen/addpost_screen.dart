//import 'models/addpost_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/addpost_provider.dart';

class AddpostScreen extends StatefulWidget {
  const AddpostScreen({Key? key}) : super(key: key);

  @override
  AddpostScreenState createState() => AddpostScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AddpostProvider(), child: AddpostScreen());
  }
}

class AddpostScreenState extends State<AddpostScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 2.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrame(context),
                      SizedBox(height: 14.v),
                      Text("lbl_news_title".tr,
                          style: CustomTextStyles.headlineSmallBluegray300),
                      SizedBox(height: 1.v),
                      Divider(color: appTheme.gray400),
                      SizedBox(height: 15.v),
                      Text("msg_add_news_article".tr,
                          style: CustomTextStyles.bodyLargeBluegray300),
                      Spacer(),
                      SizedBox(height: 19.v),
                      Container(
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 17.h, vertical: 8.v),
                          decoration: AppDecoration.outlineBlack900022.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon24x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgIconBlueGray70024x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon1,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon2,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon3,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h))
                          ]))
                    ])),
            bottomNavigationBar: _buildAutoLayoutHorizontal(context)));
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
        title: AppbarSubtitle(text: "lbl_create_news".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconBlueGray70014x14,
              margin: EdgeInsets.fromLTRB(24.h, 15.v, 24.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return DottedBorder(
        color: appTheme.blueGray700,
        padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
        strokeWidth: 1.h,
        radius: Radius.circular(6),
        borderType: BorderType.RRect,
        dashPattern: [10, 10],
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 129.h, vertical: 64.v),
            decoration: AppDecoration.outlineBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgIconsPlusBlueGray700,
                      height: 24.adaptSize,
                      width: 24.adaptSize),
                  SizedBox(height: 7.v),
                  Text("lbl_add_cover_photo".tr,
                      style: theme.textTheme.bodyMedium)
                ])));
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 14.v),
        decoration: AppDecoration.outlineBlack90002,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIcon4,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 13.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgIcon5,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgIcon6,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgIconBlueGray70014x14,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v)),
              Spacer(),
              CustomElevatedButton(
                  width: 109.h,
                  text: "lbl_publish".tr,
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.titleMediumBluegray500)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
