import 'models/onboarding_two_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_two_provider.dart';

class OnboardingTwoScreen extends StatefulWidget {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  @override
  OnboardingTwoScreenState createState() => OnboardingTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => OnboardingTwoProvider(),
        child: OnboardingTwoScreen());
  }
}

class OnboardingTwoScreenState extends State<OnboardingTwoScreen> {
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
                        image: AssetImage(ImageConstant.imgOnboardingTwo),
                        fit: BoxFit.cover)),
                child: Opacity(
                    opacity: 0.9,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(vertical: 44.v),
                        child: Column(children: [
                          SizedBox(height: 49.v),
                          Container(
                              decoration: AppDecoration.outlineWhiteA,
                              child: Text("lbl_time".tr,
                                  style:
                                      CustomTextStyles.polyPrimaryContainer)),
                          Spacer(),
                          Text("lbl_the_way_out".tr,
                              style: theme.textTheme.displayMedium),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 345.h,
                                  margin:
                                      EdgeInsets.only(left: 31.h, right: 50.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_of_this_mess2".tr,
                                            style: CustomTextStyles
                                                .titleMediumff000000),
                                        TextSpan(
                                            text: "msg_peace_in_the_middle_east"
                                                .tr,
                                            style: CustomTextStyles
                                                .titleMediumffff0000)
                                      ]),
                                      textAlign: TextAlign.center))),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 141.h),
                                  child: Text("msg_by_michael_elliot".tr,
                                      style: CustomTextStyles.bodyLargeLight))),
                          SizedBox(height: 61.v),
                          _buildOnboardingTwoRow(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildOnboardingTwoRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
                onTap: () {
                  onBackPressed(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(top: 13.v, bottom: 12.v),
                    child: Text("lbl_back".tr,
                        style: theme.textTheme.titleMedium))),
            CustomElevatedButton(
                width: 85.h,
                text: "lbl_next".tr,
                margin: EdgeInsets.only(left: 10.h),
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
                onPressed: () {
                  navigateToNext(context);
                })
          ])
        ]));
  }

  /// Navigates to the previous screen.
  onBackPressed(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.
  navigateToNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
