import '../authorprofile_draweritem/widgets/cardcomponent_item_widget.dart';
import 'models/authorprofile_model.dart';
import 'models/cardcomponent_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/authorprofile_provider.dart';

class AuthorprofileDraweritem extends StatefulWidget {
  const AuthorprofileDraweritem({Key? key}) : super(key: key);

  @override
  AuthorprofileDraweritemState createState() => AuthorprofileDraweritemState();
}

class AuthorprofileDraweritemState extends State<AuthorprofileDraweritem> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillWhiteA,
            child: Column(children: [
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse100x100,
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            radius: BorderRadius.circular(50.h)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 23.v, bottom: 23.v),
                            child: Column(children: [
                              Text("lbl_1_2m".tr,
                                  style:
                                      CustomTextStyles.titleMediumBlack90002),
                              SizedBox(height: 4.v),
                              Text("lbl_followers".tr,
                                  style: CustomTextStyles.bodyLargeBluegray700)
                            ])),
                        Spacer(flex: 50),
                        Padding(
                            padding: EdgeInsets.only(top: 24.v, bottom: 21.v),
                            child: Column(children: [
                              Text("lbl_124k".tr,
                                  style:
                                      CustomTextStyles.titleMediumBlack90002),
                              SizedBox(height: 6.v),
                              Text("lbl_following".tr,
                                  style: CustomTextStyles.bodyLargeBluegray700)
                            ])),
                        Spacer(flex: 50),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 23.v),
                            child: Column(children: [
                              Text("lbl_326".tr,
                                  style:
                                      CustomTextStyles.titleMediumBlack90002),
                              SizedBox(height: 4.v),
                              Text("lbl_news".tr,
                                  style: CustomTextStyles.bodyLargeBluegray700)
                            ]))
                      ])),
              SizedBox(height: 16.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: 120.v,
                      width: 362.h,
                      margin: EdgeInsets.only(left: 24.h),
                      child: Stack(alignment: Alignment.topLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_bbc_news".tr,
                                      style: CustomTextStyles
                                          .titleMediumBlack90002),
                                  SizedBox(
                                      width: 362.h,
                                      child: Text("msg_is_an_operational".tr,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyLargeBluegray700
                                              .copyWith(height: 1.50)))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgVerifier1,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 85.h))
                      ]))),
              SizedBox(height: 15.v),
              CustomElevatedButton(
                  width: 182.h,
                  text: "lbl_following".tr,
                  margin: EdgeInsets.only(left: 24.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientPrimaryToRedADecoration,
                  alignment: Alignment.centerLeft),
              SizedBox(height: 16.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 9.v),
                        child: Text("lbl_news".tr,
                            style: CustomTextStyles.bodyLargeBluegray700)),
                    Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Selector<AuthorprofileProvider,
                                TextEditingController?>(
                            selector: (context, provider) =>
                                provider.recentController,
                            builder: (context, recentController, child) {
                              return CustomTextFormField(
                                  width: 56.h,
                                  controller: recentController,
                                  hintText: "lbl_recent".tr,
                                  textInputAction: TextInputAction.done,
                                  borderDecoration:
                                      TextFormFieldStyleHelper.underLine,
                                  filled: false);
                            }))
                  ]),
              SizedBox(height: 24.v),
              _buildCardComponent(context)
            ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 92.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconBlueGray70014x14,
              margin: EdgeInsets.symmetric(horizontal: 202.h))
        ]);
  }

  /// Section Widget
  Widget _buildCardComponent(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Consumer<AuthorprofileProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 31.v);
              },
              itemCount:
                  provider.authorprofileModelObj.cardcomponentItemList.length,
              itemBuilder: (context, index) {
                CardcomponentItemModel model =
                    provider.authorprofileModelObj.cardcomponentItemList[index];
                return CardcomponentItemWidget(model);
              });
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
