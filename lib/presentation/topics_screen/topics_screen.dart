import '../topics_screen/widgets/sportscomponent_item_widget.dart';
import 'models/sportscomponent_item_model.dart';
import 'models/topics_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/topics_provider.dart';

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({Key? key}) : super(key: key);

  @override
  TopicsScreenState createState() => TopicsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TopicsProvider(), child: TopicsScreen());
  }
}

class TopicsScreenState extends State<TopicsScreen> {
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSearchStack(context),
                  SizedBox(height: 10.v),
                  _buildSportsRow(context),
                  SizedBox(height: 9.v),
                  _buildSportsStack(context),
                  SizedBox(height: 7.v),
                  _buildNextColumn(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v),
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topCenter,
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.topCenter)
            ])),
        title: Container(
            height: 24.v,
            width: 162.h,
            margin: EdgeInsets.only(left: 99.h),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              AppbarSubtitleTwo(text: "msg_choose_your_topics".tr),
              AppbarSubtitleTwo(text: "msg_choose_your_topics".tr)
            ])));
  }

  /// Section Widget
  Widget _buildSearchStack(BuildContext context) {
    return SizedBox(
        height: 48.v,
        width: 379.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Selector<TopicsProvider, TextEditingController?>(
                  selector: (context, provider) => provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                        width: 379.h,
                        controller: searchController,
                        hintText: "lbl_search".tr,
                        alignment: Alignment.center);
                  })),
          Align(
              alignment: Alignment.center,
              child: Selector<TopicsProvider, TextEditingController?>(
                  selector: (context, provider) => provider.searchController1,
                  builder: (context, searchController1, child) {
                    return CustomSearchView(
                        width: 379.h,
                        controller: searchController1,
                        hintText: "lbl_search".tr,
                        alignment: Alignment.center);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildSportsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 208.v,
              width: 184.h,
              margin: EdgeInsets.only(bottom: 1.v),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                _buildTen(context,
                    science: "lbl_sports".tr,
                    theScienceEndeavors: "lbl_philippine_star".tr),
                _buildFoodStack(context,
                    image: ImageConstant.imgRectangle6,
                    foodText: "lbl_food".tr),
                _buildTen1(context,
                    sportsText: "lbl_sports".tr,
                    newspaperText: "lbl_philippine_star".tr),
                _buildCloseStack(context, foodText: "lbl_food".tr)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Column(children: [
                SizedBox(
                    height: 99.v,
                    width: 184.h,
                    child: Stack(alignment: Alignment.center, children: [
                      _buildFoodStack(context,
                          image: ImageConstant.imgRectangle599x184,
                          foodText: "lbl_science".tr),
                      _buildPoliticsStack(context,
                          userImage: ImageConstant.imgRectangle599x184,
                          politicsText: "lbl_science".tr)
                    ])),
                SizedBox(height: 10.v),
                SizedBox(
                    height: 99.v,
                    width: 184.h,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(top: 35.v),
                              child: Text("msg_the_science_endeavors".tr,
                                  style: CustomTextStyles
                                      .labelLargeSFProDisplayGray40001))),
                      _buildFoodStack(context,
                          image: ImageConstant.imgRectangle51,
                          foodText: "lbl_politics".tr),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(top: 35.v),
                              child: Text("msg_the_science_endeavors".tr,
                                  style: CustomTextStyles
                                      .labelLargeSFProDisplayGray40001))),
                      _buildPoliticsStack(context,
                          userImage: ImageConstant.imgRectangle51,
                          politicsText: "lbl_politics".tr)
                    ]))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildSportsStack(BuildContext context) {
    return SizedBox(
        height: 210.v,
        width: 379.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: _buildScience(context,
                            userImage1: ImageConstant.imgRectangle5,
                            science: "lbl_sports".tr,
                            theScienceEndeavors: "lbl_philippine_star".tr,
                            userImage2: ImageConstant.imgRectangle6,
                            politics: "lbl_food".tr)),
                    _buildScience(context,
                        userImage1: ImageConstant.imgRectangle599x184,
                        science: "lbl_science".tr,
                        theScienceEndeavors: "msg_the_science_endeavors".tr,
                        userImage2: ImageConstant.imgRectangle51,
                        politics: "lbl_politics".tr)
                  ])),
          Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 208.v,
                        width: 184.h,
                        margin: EdgeInsets.only(bottom: 1.v),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          _buildTen1(context,
                              sportsText: "lbl_sports".tr,
                              newspaperText: "lbl_philippine_star".tr),
                          _buildCloseStack(context, foodText: "lbl_food".tr)
                        ])),
                    SizedBox(
                        height: 209.v,
                        width: 184.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildPoliticsStack(context,
                                        userImage:
                                            ImageConstant.imgRectangle599x184,
                                        politicsText: "lbl_science".tr),
                                    SizedBox(height: 45.v),
                                    Text("msg_the_science_endeavors".tr,
                                        style: CustomTextStyles
                                            .labelLargeSFProDisplayGray40001)
                                  ])),
                          _buildPoliticsStack(context,
                              userImage: ImageConstant.imgRectangle51,
                              politicsText: "lbl_politics".tr)
                        ]))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildNextColumn(BuildContext context) {
    return SizedBox(
        height: 322.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 24.h, right: 24.h, bottom: 112.v),
                  child: Consumer<TopicsProvider>(
                      builder: (context, provider, child) {
                    return GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 100.v,
                            crossAxisCount: 2,
                            mainAxisSpacing: 9.h,
                            crossAxisSpacing: 9.h),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: provider
                            .topicsModelObj.sportscomponentItemList.length,
                        itemBuilder: (context, index) {
                          SportscomponentItemModel model = provider
                              .topicsModelObj.sportscomponentItemList[index];
                          return SportscomponentItemWidget(model);
                        });
                  }))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.only(left: 24.h, top: 40.v, right: 24.h),
                  decoration: AppDecoration.outlineBlack90002,
                  child: CustomElevatedButton(
                      text: "lbl_next".tr,
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientPrimaryToRedADecoration,
                      onPressed: () {
                        navigateToNextPage(context);
                      })))
        ]));
  }

  /// Common widget
  Widget _buildFoodStack(
    BuildContext context, {
    required String image,
    required String foodText,
  }) {
    return SizedBox(
        height: 99.v,
        width: 184.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: image,
              height: 99.v,
              width: 184.h,
              radius: BorderRadius.circular(8.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 71.h, bottom: 6.v),
                  child: Text(foodText,
                      style: theme.textTheme.titleSmall!
                          .copyWith(color: appTheme.whiteA700))))
        ]));
  }

  /// Common widget
  Widget _buildPoliticsStack(
    BuildContext context, {
    required String userImage,
    required String politicsText,
  }) {
    return SizedBox(
        height: 99.v,
        width: 184.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: userImage,
              height: 99.v,
              width: 184.h,
              radius: BorderRadius.circular(8.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 66.h, right: 8.h, bottom: 4.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCheckbox,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            radius: BorderRadius.circular(3.h),
                            alignment: Alignment.centerRight),
                        SizedBox(height: 44.v),
                        Text(politicsText,
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: appTheme.whiteA700))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildTen(
    BuildContext context, {
    required String science,
    required String theScienceEndeavors,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 99.v,
              width: 184.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle5,
                    height: 99.v,
                    width: 184.h,
                    radius: BorderRadius.circular(8.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 7.v),
                        child: Text(science,
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: appTheme.whiteA700))))
              ])),
          SizedBox(height: 46.v),
          Text(theScienceEndeavors,
              style: CustomTextStyles.labelLargeSFProDisplayGray40001
                  .copyWith(color: appTheme.gray40001))
        ]);
  }

  /// Common widget
  Widget _buildScience(
    BuildContext context, {
    required String userImage1,
    required String science,
    required String theScienceEndeavors,
    required String userImage2,
    required String politics,
  }) {
    return SizedBox(
        height: 209.v,
        width: 184.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 99.v,
                        width: 184.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: userImage1,
                              height: 99.v,
                              width: 184.h,
                              radius: BorderRadius.circular(8.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 8.v),
                                  child: Text(science,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                              color: appTheme.whiteA700))))
                        ])),
                    SizedBox(height: 45.v),
                    Text(theScienceEndeavors,
                        style: CustomTextStyles.labelLargeSFProDisplayGray40001
                            .copyWith(color: appTheme.gray40001))
                  ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 99.v,
                  width: 184.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: userImage2,
                        height: 99.v,
                        width: 184.h,
                        radius: BorderRadius.circular(8.h),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 4.v),
                            child: Text(politics,
                                style: theme.textTheme.titleSmall!
                                    .copyWith(color: appTheme.whiteA700))))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildTen1(
    BuildContext context, {
    required String sportsText,
    required String newspaperText,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 99.v,
              width: 184.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle5,
                    height: 99.v,
                    width: 184.h,
                    radius: BorderRadius.circular(8.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(left: 70.h, right: 6.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgCheckbox,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  radius: BorderRadius.circular(3.h),
                                  alignment: Alignment.centerRight),
                              SizedBox(height: 43.v),
                              Text(sportsText,
                                  style: theme.textTheme.titleSmall!
                                      .copyWith(color: appTheme.whiteA700))
                            ])))
              ])),
          SizedBox(height: 46.v),
          Text(newspaperText,
              style: CustomTextStyles.labelLargeSFProDisplayGray40001
                  .copyWith(color: appTheme.gray40001))
        ]);
  }

  /// Common widget
  Widget _buildCloseStack(
    BuildContext context, {
    required String foodText,
  }) {
    return SizedBox(
        height: 99.v,
        width: 184.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle6,
              height: 99.v,
              width: 184.h,
              radius: BorderRadius.circular(8.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 71.h, right: 7.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCloseGray200,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            radius: BorderRadius.circular(3.h),
                            alignment: Alignment.centerRight),
                        SizedBox(height: 43.v),
                        Text(foodText,
                            style: theme.textTheme.titleSmall!
                                .copyWith(color: appTheme.whiteA700))
                      ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the newsSourceScreen when the action is triggered.
  navigateToNextPage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.newsSourceScreen,
    );
  }
}
