import '../topics_screen/widgets/viewhierarchy_item_widget.dart';
import '../topics_screen/widgets/widget_item_widget.dart';
import 'models/topics_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'models/widget_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle_one.dart';
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(children: [
                  Selector<TopicsProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.searchController,
                      builder: (context, searchController, child) {
                        return CustomSearchView(
                            controller: searchController,
                            hintText: "lbl_search".tr,
                            contentPadding: EdgeInsets.only(
                                left: 10.h, top: 13.v, bottom: 13.v));
                      }),
                  SizedBox(height: 10.v),
                  _buildViewHierarchy(context),
                  SizedBox(height: 9.v),
                  _buildWidget(context)
                ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitleOne(
            text: "msg_choose_your_topics".tr,
            margin: EdgeInsets.only(left: 99.h)));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Consumer<TopicsProvider>(builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 209.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 9.h,
                  crossAxisSpacing: 9.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: provider.topicsModelObj.viewhierarchyItemList.length,
              itemBuilder: (context, index) {
                ViewhierarchyItemModel model =
                    provider.topicsModelObj.viewhierarchyItemList[index];
                return ViewhierarchyItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Consumer<TopicsProvider>(builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 100.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 9.h,
                  crossAxisSpacing: 9.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: provider.topicsModelObj.widgetItemList.length,
              itemBuilder: (context, index) {
                WidgetItemModel model =
                    provider.topicsModelObj.widgetItemList[index];
                return WidgetItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        decoration: AppDecoration.outlineBlack,
        child: CustomElevatedButton(
            text: "lbl_next".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToRedADecoration));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
