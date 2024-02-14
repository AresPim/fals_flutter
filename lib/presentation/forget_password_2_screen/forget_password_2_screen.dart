//import 'models/forget_password_2_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/forget_password_2_provider.dart';

class ForgetPassword2Screen extends StatefulWidget {
  const ForgetPassword2Screen({Key? key}) : super(key: key);

  @override
  ForgetPassword2ScreenState createState() => ForgetPassword2ScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ForgetPassword2Provider(),
        child: ForgetPassword2Screen());
  }
}

class ForgetPassword2ScreenState extends State<ForgetPassword2Screen> {
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
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 2.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 186.h,
                          child: Text("msg_forgot_password".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineLarge!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 3.v),
                      Container(
                          width: 325.h,
                          margin: EdgeInsets.only(right: 55.h),
                          child: Text("msg_don_t_worry_it2".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeBluegray700
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 12.v),
                      _buildInputField(context),
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
              onTapVector(context);
            }));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_email_id_mobile".tr, style: theme.textTheme.bodyMedium),
      SizedBox(height: 4.v),
      Selector<ForgetPassword2Provider, TextEditingController?>(
          selector: (context, provider) => provider.mobileNumberController,
          builder: (context, mobileNumberController, child) {
            return CustomTextFormField(
                controller: mobileNumberController,
                textInputAction: TextInputAction.done);
          })
    ]);
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        decoration: AppDecoration.outlineBlack90002,
        child: CustomElevatedButton(
            text: "lbl_submit".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
            onPressed: () {
              navigateToNextPage(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapVector(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the verification1Screen when the action is triggered.
  navigateToNextPage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verification1Screen,
    );
  }
}
