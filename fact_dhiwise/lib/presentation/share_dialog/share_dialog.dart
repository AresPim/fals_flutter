import 'models/share_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/share_provider.dart';

class ShareDialog extends StatefulWidget {
  const ShareDialog({Key? key}) : super(key: key);

  @override
  ShareDialogState createState() => ShareDialogState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ShareProvider(), child: ShareDialog());
  }
}

class ShareDialogState extends State<ShareDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390.h,
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 30.v,
              width: 32.h,
              alignment: Alignment.centerRight,
              onTap: () {
                onTapImgClose(context);
              }),
          SizedBox(height: 85.v),
          Text("msg_share_this_with".tr,
              style: CustomTextStyles.bodyMediumRobotoBlack90002),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 14.h, right: 10.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 7.v, bottom: 1.v),
                        child:
                            _buildDoctorReviews(context, text: "lbl_link".tr)),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h, top: 7.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(right: 4.h),
                              child: CustomIconButton(
                                  height: 36.v,
                                  width: 38.h,
                                  padding: EdgeInsets.all(8.h),
                                  alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgVolume))),
                          SizedBox(height: 3.v),
                          Text("lbl_whatsapp".tr,
                              style: CustomTextStyles.bodySmall_1)
                        ])),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 19.h, top: 7.v, bottom: 1.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: CustomIconButton(
                                  height: 36.v,
                                  width: 38.h,
                                  padding: EdgeInsets.all(8.h),
                                  alignment: Alignment.centerRight,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgFacebook))),
                          SizedBox(height: 2.v),
                          Text("lbl_facebook".tr,
                              style: theme.textTheme.bodySmall)
                        ])),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 18.h, top: 7.v, bottom: 1.v),
                        child: _buildDoctorReviews(context,
                            text: "lbl_twitter".tr)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 14.h, top: 7.v, bottom: 1.v),
                        child:
                            _buildDoctorReviews(context, text: "lbl_email".tr)),
                    Container(
                        height: 59.v,
                        width: 57.h,
                        margin: EdgeInsets.only(left: 14.h),
                        child: Stack(alignment: Alignment.topRight, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFacebook1,
                                            height: 36.v,
                                            width: 38.h,
                                            radius: BorderRadius.circular(18.h),
                                            alignment: Alignment.centerRight,
                                            margin:
                                                EdgeInsets.only(right: 2.h)),
                                        SizedBox(height: 3.v),
                                        Text("lbl_instagram".tr,
                                            style: theme.textTheme.bodySmall)
                                      ]))),
                          CustomIconButton(
                              height: 20.v,
                              width: 21.h,
                              padding: EdgeInsets.all(7.h),
                              decoration: IconButtonStyleHelper.outlineBlack,
                              alignment: Alignment.topRight,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight))
                        ]))
                  ])),
          SizedBox(height: 32.v)
        ]));
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String text,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomIconButton(
          height: 36.v,
          width: 38.h,
          padding: EdgeInsets.all(8.h),
          alignment: Alignment.center,
          child: CustomImageView(imagePath: ImageConstant.imgTrash)),
      SizedBox(height: 2.v),
      Text(text,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
