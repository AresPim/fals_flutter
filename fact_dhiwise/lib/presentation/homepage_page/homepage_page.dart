import '../homepage_page/widgets/alllist_item_widget.dart';
import '../homepage_page/widgets/cardcomponentlist_item_widget.dart';
import 'models/alllist_item_model.dart';
import 'models/cardcomponentlist_item_model.dart';
import 'models/homepage_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_title_image.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/homepage_provider.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatefulWidget {
  const HomepagePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomepagePageState createState() => HomepagePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomepageProvider(),
      child: HomepagePage(),
    );
  }
}

class HomepagePageState extends State<HomepagePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: _buildLatestFrame(
                    context,
                    latestText: "lbl_trending".tr,
                    seeAllText: "lbl_see_all".tr,
                  ),
                ),
                SizedBox(height: 14.v),
                _buildTrendingCards(context),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: _buildLatestFrame(
                    context,
                    latestText: "lbl_latest".tr,
                    seeAllText: "lbl_see_all".tr,
                  ),
                ),
                SizedBox(height: 15.v),
                _buildAllList(context),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 2.v,
                    width: 19.h,
                    margin: EdgeInsets.only(left: 24.h),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(1.07, 1.65),
                        colors: [
                          theme.colorScheme.primary,
                          appTheme.redA100,
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                _buildCardComponentList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.img42099653225686,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgSearchWhiteA700,
          margin: EdgeInsets.only(
            left: 25.h,
            top: 12.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup38,
          margin: EdgeInsets.only(
            left: 5.h,
            top: 12.v,
            right: 37.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTrendingCards(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBlack90002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 183.v,
            width: 364.h,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "lbl_europe".tr,
            style: CustomTextStyles.bodyMedium13,
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_russian_warship".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 1.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUserWhiteA700,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_bbc_news".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconBlueGray700,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_4h_ago".tr,
                      style: CustomTextStyles.bodyMedium13,
                    ),
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconBlueGray70014x14,
                height: 14.adaptSize,
                width: 14.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 3.v),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAllList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 26.v,
        child: Consumer<HomepageProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 10.h,
                );
              },
              itemCount: provider.homepageModelObj.alllistItemList.length,
              itemBuilder: (context, index) {
                AlllistItemModel model =
                    provider.homepageModelObj.alllistItemList[index];
                return AlllistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardComponentList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Consumer<HomepageProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 30.v,
              );
            },
            itemCount:
                provider.homepageModelObj.cardcomponentlistItemList.length,
            itemBuilder: (context, index) {
              CardcomponentlistItemModel model =
                  provider.homepageModelObj.cardcomponentlistItemList[index];
              return CardcomponentlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildLatestFrame(
    BuildContext context, {
    required String latestText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            latestText,
            style: CustomTextStyles.titleMediumBlack90002.copyWith(
              color: appTheme.black90002,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            seeAllText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray700,
            ),
          ),
        ),
      ],
    );
  }
}
