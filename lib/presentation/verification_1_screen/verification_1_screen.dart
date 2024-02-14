import 'models/verification_1_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'provider/verification_1_provider.dart';

class Verification1Screen extends StatefulWidget {
  const Verification1Screen({Key? key}) : super(key: key);

  @override
  Verification1ScreenState createState() => Verification1ScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Verification1Provider(),
        child: Verification1Screen());
  }
}

class Verification1ScreenState extends State<Verification1Screen> {
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
                padding: EdgeInsets.symmetric(horizontal: 57.h, vertical: 9.v),
                child: Column(children: [
                  Text("msg_otp_verification".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 9.v),
                  Text("msg_enter_the_otp_sent".tr,
                      style: CustomTextStyles.bodyLargeBluegray700),
                  SizedBox(height: 26.v),
                  Padding(
                      padding: EdgeInsets.only(left: 5.h, right: 4.h),
                      child: Selector<Verification1Provider,
                              TextEditingController?>(
                          selector: (context, provider) =>
                              provider.otpController,
                          builder: (context, otpController, child) {
                            return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                });
                          })),
                  SizedBox(height: 26.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_resend_code_in".tr,
                            style: CustomTextStyles.bodyMediumff4e4b66_1),
                        TextSpan(
                            text: "lbl_56s".tr,
                            style: CustomTextStyles.bodyMediumffc20052)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildAutoLayoutHorizontal(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlueGray700,
            margin: EdgeInsets.fromLTRB(28.h, 20.v, 384.h, 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        decoration: AppDecoration.outlineBlack90002,
        child: CustomElevatedButton(
            text: "lbl_verify".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
            onPressed: () {
              navigateToNextPage(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the verification2Screen when the action is triggered.
  navigateToNextPage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verification2Screen,
    );
  }
}
