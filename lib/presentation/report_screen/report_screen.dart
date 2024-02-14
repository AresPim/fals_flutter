import 'models/report_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/report_provider.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  ReportScreenState createState() => ReportScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ReportProvider(), child: ReportScreen());
  }
}

class ReportScreenState extends State<ReportScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 22.v),
                      Selector<ReportProvider, TextEditingController?>(
                          selector: (context, provider) =>
                              provider.titlevalueController,
                          builder: (context, titlevalueController, child) {
                            return CustomTextFormField(
                                controller: titlevalueController,
                                hintText: "lbl_title".tr,
                                textInputAction: TextInputAction.done,
                                borderDecoration:
                                    TextFormFieldStyleHelper.underLineGray,
                                filled: false);
                          }),
                      SizedBox(height: 62.v),
                      Text("lbl_description".tr,
                          style: CustomTextStyles.bodyLargeBluegray300),
                      Spacer(),
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
        leadingWidth: 49.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_report".tr));
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 13.v),
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
                  width: 90.h,
                  text: "lbl_send".tr,
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.titleMediumBluegray500)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
