import 'models/detailpost_comment_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'provider/detailpost_comment_provider.dart';

// ignore_for_file: must_be_immutable
class DetailpostCommentPage extends StatefulWidget {
  const DetailpostCommentPage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailpostCommentPageState createState() => DetailpostCommentPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailpostCommentProvider(),
      child: DetailpostCommentPage(),
    );
  }
}

class DetailpostCommentPageState extends State<DetailpostCommentPage>
    with AutomaticKeepAliveClientMixin<DetailpostCommentPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 31.h,
                    right: 15.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildThisIsNotAcceptableSection(context),
                      SizedBox(height: 6.v),
                      _buildLanguageSection(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThisIsNotAcceptableSection(BuildContext context) {
    return SizedBox(
      height: 151.v,
      width: 368.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 321.h,
                              child: Text(
                                "msg_this_is_not_acceptable".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleMediumInterBluegray900
                                    .copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector12x12,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  margin: EdgeInsets.only(bottom: 3.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_10k".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl3".tr,
                                    style: CustomTextStyles
                                        .bodyMediumInterBluegray300,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbDownLine,
                                  height: 13.adaptSize,
                                  width: 13.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    top: 2.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text(
                                    "lbl_1k".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconBlueGray70014x14,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 19.h,
                            top: 2.v,
                            bottom: 46.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: _buildAuthorSection(
                      context,
                      userName: "msg_moritz_wallawitsch".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    "lbl_8".tr,
                    style: CustomTextStyles.titleSmallManropeBlack90002,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "lbl_replies".tr,
                    style: CustomTextStyles.titleSmallManropeBlack90002,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 10.v,
                  ),
                  child: SizedBox(
                    width: 291.h,
                    child: Divider(
                      indent: 28.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageSection(BuildContext context) {
    return Container(
      height: 1151.v,
      width: 372.h,
      margin: EdgeInsets.only(left: 10.h),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(left: 21.h),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_well_if_i_was_you".tr,
                            style: CustomTextStyles.titleMediumInterBluegray900,
                          ),
                          SizedBox(height: 5.v),
                          _buildIWillMakeThisSection(
                            context,
                            countText: "lbl_10k".tr,
                            text: "lbl3".tr,
                            countText1: "lbl_1k".tr,
                            text1: "lbl3".tr,
                            replyText: "lbl_reply".tr,
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconBlueGray70014x14,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(
                          left: 26.h,
                          bottom: 22.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  _buildAuthorSection(
                    context,
                    userName: "msg_moritz_wallawitsch".tr,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 519.v,
              width: 351.h,
              margin: EdgeInsets.only(top: 133.v),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 9.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_i_will_make_this".tr,
                                      style: CustomTextStyles
                                          .titleMediumInterBluegray900,
                                    ),
                                    SizedBox(height: 5.v),
                                    _buildIWillMakeThisSection(
                                      context,
                                      countText: "lbl_10k".tr,
                                      text: "lbl3".tr,
                                      countText1: "lbl_1k".tr,
                                      text1: "lbl3".tr,
                                      replyText: "lbl_reply".tr,
                                    ),
                                  ],
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconBlueGray70014x14,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 19.h,
                                    bottom: 22.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 9.v),
                          _buildAuthorSection(
                            context,
                            userName: "msg_moritz_wallawitsch".tr,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 48.h,
                        top: 10.v,
                        right: 15.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 252.h,
                                    child: Text(
                                      "msg_i_will_make_this".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleMediumInterBluegray900
                                          .copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3.v),
                                  _buildIWillMakeThisSection(
                                    context,
                                    countText: "lbl_10k".tr,
                                    text: "lbl3".tr,
                                    countText1: "lbl_1k".tr,
                                    text1: "lbl3".tr,
                                    replyText: "lbl_reply".tr,
                                  ),
                                ],
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgIconBlueGray70014x14,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  top: 2.v,
                                  bottom: 46.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.v),
                          _buildAuthorSection(
                            context,
                            userName: "msg_moritz_wallawitsch".tr,
                          ),
                          SizedBox(height: 20.v),
                          Divider(),
                          SizedBox(height: 10.v),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 259.h,
                                    child: Text(
                                      "msg_i_like_this_coffee".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleMediumInterBluegray900
                                          .copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3.v),
                                  _buildIWillMakeThisSection(
                                    context,
                                    countText: "lbl_10k".tr,
                                    text: "lbl3".tr,
                                    countText1: "lbl_1k".tr,
                                    text1: "lbl3".tr,
                                    replyText: "lbl_reply".tr,
                                  ),
                                ],
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgIconBlueGray70014x14,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 9.h,
                                  top: 2.v,
                                  bottom: 46.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 9.v),
                          _buildAuthorSection(
                            context,
                            userName: "msg_moritz_wallawitsch".tr,
                          ),
                          SizedBox(height: 20.v),
                          Divider(),
                          SizedBox(height: 125.v),
                          Text(
                            "lbl_load_more".tr.toUpperCase(),
                            style:
                                CustomTextStyles.titleSmallMontserratBlack90002,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 43.h,
                        right: 10.h,
                        bottom: 117.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.h,
                        vertical: 10.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: 252.h,
                                    child: Text(
                                      "msg_i_will_make_this".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleMediumInterBluegray900
                                          .copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconBlueGray70014x14,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 16.h,
                                    top: 2.v,
                                    bottom: 25.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: _buildIWillMakeThisSection(
                              context,
                              countText: "lbl_10k".tr,
                              text: "lbl3".tr,
                              countText1: "lbl_1k".tr,
                              text1: "lbl3".tr,
                              replyText: "lbl_reply".tr,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: _buildAuthorSection(
                              context,
                              userName: "msg_moritz_wallawitsch".tr,
                            ),
                          ),
                          SizedBox(height: 9.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: SizedBox(
                        height: 428.v,
                        child: VerticalDivider(
                          width: 2.h,
                          thickness: 2.v,
                          color: appTheme.gray30001,
                          indent: 17.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 366.v,
              width: 351.h,
              margin: EdgeInsets.only(bottom: 98.v),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 9.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_my_mamma_don_t_like".tr,
                                      style: CustomTextStyles
                                          .titleMediumInterBluegray900,
                                    ),
                                    SizedBox(height: 5.v),
                                    _buildIWillMakeThisSection(
                                      context,
                                      countText: "lbl_10k".tr,
                                      text: "lbl3".tr,
                                      countText1: "lbl_1k".tr,
                                      text1: "lbl3".tr,
                                      replyText: "lbl_reply".tr,
                                    ),
                                  ],
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconBlueGray70014x14,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 29.h,
                                    bottom: 22.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 9.v),
                          _buildAuthorSection(
                            context,
                            userName: "msg_moritz_wallawitsch".tr,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: SizedBox(
                        height: 273.v,
                        child: VerticalDivider(
                          width: 2.h,
                          thickness: 2.v,
                          color: appTheme.gray30001,
                          indent: 8.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 40.h,
                        right: 12.h,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.h,
                        vertical: 11.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 265.h,
                                      child: Text(
                                        "msg_btw_u_re_ugly_today".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumInterBluegray900
                                            .copyWith(
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
                                    _buildIWillMakeThisSection(
                                      context,
                                      countText: "lbl_10k".tr,
                                      text: "lbl3".tr,
                                      countText1: "lbl_1k".tr,
                                      text1: "lbl3".tr,
                                      replyText: "lbl_reply".tr,
                                    ),
                                  ],
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconBlueGray70014x14,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 3.h,
                                    bottom: 46.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: _buildAuthorSection(
                              context,
                              userName: "msg_moritz_wallawitsch".tr,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Divider(
                            indent: 7.h,
                          ),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 253.h,
                                      child: Text(
                                        "msg_hey_i_can_sing".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleMediumInterBluegray900
                                            .copyWith(
                                          height: 1.50,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
                                    _buildIWillMakeThisSection(
                                      context,
                                      countText: "lbl_10k".tr,
                                      text: "lbl3".tr,
                                      countText1: "lbl_1k".tr,
                                      text1: "lbl3".tr,
                                      replyText: "lbl_reply".tr,
                                    ),
                                  ],
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgIconBlueGray70014x14,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 15.h,
                                    top: 2.v,
                                    bottom: 46.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: _buildAuthorSection(
                              context,
                              userName: "msg_moritz_wallawitsch".tr,
                            ),
                          ),
                          SizedBox(height: 9.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 1136.v,
              width: 372.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: SizedBox(
                        height: 1095.v,
                        child: VerticalDivider(
                          width: 2.h,
                          thickness: 2.v,
                          color: appTheme.gray30001,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 29.h,
                        right: 13.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              right: 2.h,
                            ),
                            child: _buildReplyCounter(
                              context,
                              counterText: "lbl_10".tr,
                              repliesText: "lbl_replies".tr,
                            ),
                          ),
                          SizedBox(height: 532.v),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: _buildReplyCounter(
                              context,
                              counterText: "lbl_22".tr,
                              repliesText: "lbl_replies".tr,
                            ),
                          ),
                          SizedBox(height: 382.v),
                          Text(
                            "lbl_load_more".tr.toUpperCase(),
                            style:
                                CustomTextStyles.titleSmallMontserratBlack90002,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 4.v),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Selector<DetailpostCommentProvider,
                                TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.languageController,
                              builder: (context, languageController, child) {
                                return CustomTextFormField(
                                  controller: languageController,
                                  hintText: "lbl4".tr,
                                  hintStyle: CustomTextStyles
                                      .bodyLargeManropeBluegray600,
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 10.v, 17.h, 10.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgSave,
                                      height: 24.v,
                                      width: 25.h,
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    maxHeight: 46.v,
                                  ),
                                );
                              },
                            ),
                          ),
                          CustomElevatedButton(
                            height: 28.v,
                            width: 78.h,
                            text: "lbl_reply".tr.toUpperCase(),
                            margin: EdgeInsets.symmetric(vertical: 9.v),
                            buttonStyle: CustomButtonStyles.fillWhiteA,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallMontserratBlack90002,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAuthorSection(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAvatarGoesHere3,
          height: 24.adaptSize,
          width: 24.adaptSize,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 3.v,
            bottom: 3.v,
          ),
          child: Text(
            userName,
            style: CustomTextStyles.titleSmallBluegray300.copyWith(
              color: appTheme.blueGray300,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildIWillMakeThisSection(
    BuildContext context, {
    required String countText,
    required String text,
    required String countText1,
    required String text1,
    required String replyText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVector12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            countText,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.blueGray60001,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            text,
            style: CustomTextStyles.bodyMediumInterBluegray300.copyWith(
              color: appTheme.blueGray300,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgThumbDownLine,
          height: 13.adaptSize,
          width: 13.adaptSize,
          margin: EdgeInsets.only(
            left: 4.h,
            top: 2.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            countText1,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.blueGray60001,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            text1,
            style: CustomTextStyles.bodyMediumInterBluegray300.copyWith(
              color: appTheme.blueGray300,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            replyText,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.blueGray60001,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildReplyCounter(
    BuildContext context, {
    required String counterText,
    required String repliesText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            counterText,
            style: CustomTextStyles.titleSmallManropeBlack90002.copyWith(
              color: appTheme.black90002,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text(
            repliesText,
            style: CustomTextStyles.titleSmallManropeBlack90002.copyWith(
              color: appTheme.black90002,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 10.v,
            ),
            child: Divider(
              indent: 19.h,
            ),
          ),
        ),
      ],
    );
  }
}
