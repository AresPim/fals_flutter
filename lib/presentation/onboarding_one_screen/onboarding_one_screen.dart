import 'models/onboarding_one_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_one_provider.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  OnboardingOneScreenState createState() => OnboardingOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => OnboardingOneProvider(),
        child: OnboardingOneScreen());
  }
}

class OnboardingOneScreenState extends State<OnboardingOneScreen> {
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
                    color: appTheme.whiteA700,
                    border: Border.all(color: appTheme.black90002, width: 1.h),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup151),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 228.h,
                              margin: EdgeInsets.only(right: 170.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 34.v),
                              decoration: AppDecoration.fillRedA,
                              child: Container(
                                  width: 187.h,
                                  margin: EdgeInsets.only(right: 8.h),
                                  child: Text("lbl_the_economist".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .displayMediumPolyWhiteA700))),
                          Spacer(),
                          SizedBox(height: 95.v),
                          Container(
                              width: 355.h,
                              margin: EdgeInsets.only(left: 8.h, right: 33.h),
                              child: Text("msg_what_they_don_t".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.displaySmall!
                                      .copyWith(height: 1.03)))
                        ]))),
            bottomNavigationBar: _buildPagerIndicatorRow(context)));
  }

  /// Section Widget
  Widget _buildPagerIndicatorRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 38.v),
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
          CustomElevatedButton(
              width: 85.h,
              text: "lbl_next".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientPrimaryToRedADecoration,
              onPressed: () {
                navigateToNext(context);
              })
        ]));
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  navigateToNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }
}
