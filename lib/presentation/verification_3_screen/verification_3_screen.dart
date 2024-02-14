import 'models/verification_3_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/verification_3_provider.dart';

class Verification3Screen extends StatefulWidget {
  const Verification3Screen({Key? key}) : super(key: key);

  @override
  Verification3ScreenState createState() => Verification3ScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Verification3Provider(),
        child: Verification3Screen());
  }
}

class Verification3ScreenState extends State<Verification3Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 19.v),
                      CustomImageView(
                          imagePath: ImageConstant.img42099653225686,
                          height: 147.v,
                          width: 231.h),
                      SizedBox(height: 32.v),
                      Text("msg_congratulations".tr,
                          style: CustomTextStyles.headlineLargeArial),
                      SizedBox(height: 6.v),
                      Text("msg_your_account_is".tr,
                          style: CustomTextStyles.bodyLargeArialBluegray700)
                    ])),
            bottomNavigationBar: _buildAutoLayoutHorizontal(context)));
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        decoration: AppDecoration.fillWhiteA,
        child: CustomElevatedButton(
            text: "lbl_go_to_homepage".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
            onPressed: () {
              navigateToHomePage(context);
            }));
  }

  /// Navigates to the homepageContainerScreen when the action is triggered.
  navigateToHomePage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homepageContainerScreen,
    );
  }
}
