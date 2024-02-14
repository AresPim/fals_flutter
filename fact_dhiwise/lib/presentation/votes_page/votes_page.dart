import 'models/votes_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'provider/votes_provider.dart';

// ignore_for_file: must_be_immutable
class VotesPage extends StatefulWidget {
  const VotesPage({Key? key})
      : super(
          key: key,
        );

  @override
  VotesPageState createState() => VotesPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VotesProvider(),
      child: VotesPage(),
    );
  }
}

class VotesPageState extends State<VotesPage>
    with AutomaticKeepAliveClientMixin<VotesPage> {
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
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 27.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 158.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 41.h),
                    child: CustomRatingBar(
                      initialRating: 0,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 41.h),
                    child: _buildSeventyNine(
                      context,
                      moritzWallawitsch: "msg_moritz_wallawitsch".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.teal50,
                      indent: 41.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: CustomRatingBar(
                      initialRating: 0,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: _buildAuthor(
                      context,
                      userName: "msg_moritz_wallawitsch".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.teal50,
                      indent: 43.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: CustomRatingBar(
                      initialRating: 0,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: _buildSeventyNine(
                      context,
                      moritzWallawitsch: "msg_moritz_wallawitsch".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.teal50,
                      indent: 43.h,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 41.h),
                    child: CustomRatingBar(
                      initialRating: 5,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 41.h),
                    child: _buildAuthor(
                      context,
                      userName: "msg_moritz_wallawitsch".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.teal50,
                      indent: 41.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: CustomRatingBar(
                      initialRating: 1,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: _buildAuthor(
                      context,
                      userName: "msg_moritz_wallawitsch".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.teal50,
                      indent: 43.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: CustomRatingBar(
                      initialRating: 0,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: _buildAuthor(
                      context,
                      userName: "msg_moritz_wallawitsch".tr,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Divider(
                      color: appTheme.teal50,
                      indent: 43.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: CustomRatingBar(
                      initialRating: 0,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 43.h),
                    child: _buildAuthor(
                      context,
                      userName: "msg_moritz_wallawitsch".tr,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                    height: 41.v,
                    width: 185.h,
                    text: "lbl_load_more".tr.toUpperCase(),
                    buttonStyle: CustomButtonStyles.fillWhiteATL6,
                    buttonTextStyle:
                        CustomTextStyles.titleSmallMontserratBlack90002,
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
  Widget _buildSeventyNine(
    BuildContext context, {
    required String moritzWallawitsch,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAvatarGoesHere,
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
            moritzWallawitsch,
            style: CustomTextStyles.titleSmallBluegray300.copyWith(
              color: appTheme.blueGray300,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVerifier1,
          height: 16.v,
          width: 15.h,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildAuthor(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgAvatarGoesHere1,
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
}
