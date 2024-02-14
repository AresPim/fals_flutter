import 'models/verification_one_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'provider/verification_one_provider.dart';

class VerificationOneScreen extends StatefulWidget {
  const VerificationOneScreen({Key? key}) : super(key: key);

  @override
  VerificationOneScreenState createState() => VerificationOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => VerificationOneProvider(),
        child: VerificationOneScreen());
  }
}

class VerificationOneScreenState extends State<VerificationOneScreen> {
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
                      child: Selector<VerificationOneProvider,
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
                            style: CustomTextStyles.bodyMediumff4e4b66),
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
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(28.h, 20.v, 384.h, 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        decoration: AppDecoration.outlineBlack,
        child: CustomElevatedButton(
            text: "lbl_verify".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToRedADecoration));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
