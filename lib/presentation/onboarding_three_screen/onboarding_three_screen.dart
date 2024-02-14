import 'models/onboarding_three_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_three_provider.dart';

class OnboardingThreeScreen extends StatefulWidget {
  const OnboardingThreeScreen({Key? key}) : super(key: key);

  @override
  OnboardingThreeScreenState createState() => OnboardingThreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => OnboardingThreeProvider(),
        child: OnboardingThreeScreen());
  }
}

class OnboardingThreeScreenState extends State<OnboardingThreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnboardingThree),
                        fit: BoxFit.cover)),
                child: Opacity(
                    opacity: 0.9,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(horizontal: 11.h),
                        child: Column(children: [
                          Container(
                              width: 397.h,
                              margin: EdgeInsets.only(left: 7.h),
                              child: Text("msg_bloomberg_businessweek".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .postNoBillsColomboExtraBoldWhiteA700)),
                          Spacer(),
                          Text("lbl_manipulation".tr,
                              style: CustomTextStyles.displayMediumWhiteA700),
                          SizedBox(height: 22.v),
                          Container(
                              width: 337.h,
                              margin: EdgeInsets.only(left: 30.h, right: 36.h),
                              child: Text("msg_how_social_media".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleMediumGray400
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 44.v),
                          _buildOnboardingThreeRow(context),
                          SizedBox(height: 44.v)
                        ]))))));
  }

  /// Section Widget
  Widget _buildOnboardingThreeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 14.v,
              margin: EdgeInsets.symmetric(vertical: 18.v),
              child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                      spacing: 5,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.blueGray300,
                      dotHeight: 14.v,
                      dotWidth: 14.h))),
          Spacer(),
          GestureDetector(
              onTap: () {
                onBackPressed(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 13.v, bottom: 12.v),
                  child:
                      Text("lbl_back".tr, style: theme.textTheme.titleMedium))),
          CustomElevatedButton(
              width: 142.h,
              text: "lbl_get_started".tr,
              margin: EdgeInsets.only(left: 10.h),
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
              onPressed: () {
                navigateToLogin(context);
              })
        ]));
  }

  /// Navigates to the previous screen.
  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the loginScreen when the action is triggered.
  navigateToLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
