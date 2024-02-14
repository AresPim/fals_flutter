import '../news_source_screen/widgets/authorcardgrid_item_widget.dart';
import '../news_source_screen/widgets/authorcardlist_item_widget.dart';
import 'models/authorcardgrid_item_model.dart';
import 'models/authorcardlist_item_model.dart';
import 'models/news_source_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_elevated_button.dart';
import 'package:fals/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/news_source_provider.dart';

class NewsSourceScreen extends StatefulWidget {
  const NewsSourceScreen({Key? key}) : super(key: key);

  @override
  NewsSourceScreenState createState() => NewsSourceScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NewsSourceProvider(), child: NewsSourceScreen());
  }
}

class NewsSourceScreenState extends State<NewsSourceScreen> {
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
                height: 882.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 24.h, top: 20.v, right: 21.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(context),
                            SizedBox(height: 13.v),
                            Selector<NewsSourceProvider,
                                    TextEditingController?>(
                                selector: (context, provider) =>
                                    provider.searchController,
                                builder: (context, searchController, child) {
                                  return CustomSearchView(
                                      controller: searchController,
                                      hintText: "lbl_search".tr,
                                      contentPadding: EdgeInsets.only(
                                          left: 10.h, top: 13.v, bottom: 13.v));
                                }),
                            SizedBox(height: 16.v),
                            _buildAuthorCardGrid(context),
                            SizedBox(height: 16.v),
                            _buildAuthorCardList(context)
                          ]))),
                  _buildFrame(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 26.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, bottom: 2.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "msg_choose_your_news".tr));
  }

  /// Section Widget
  Widget _buildAuthorCardGrid(BuildContext context) {
    return Consumer<NewsSourceProvider>(builder: (context, provider, child) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 159.v,
              crossAxisCount: 3,
              mainAxisSpacing: 22.h,
              crossAxisSpacing: 22.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.newsSourceModelObj.authorcardgridItemList.length,
          itemBuilder: (context, index) {
            AuthorcardgridItemModel model =
                provider.newsSourceModelObj.authorcardgridItemList[index];
            return AuthorcardgridItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildAuthorCardList(BuildContext context) {
    return SizedBox(
        height: 158.v,
        child:
            Consumer<NewsSourceProvider>(builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 22.h);
              },
              itemCount:
                  provider.newsSourceModelObj.authorcardlistItemList.length,
              itemBuilder: (context, index) {
                AuthorcardlistItemModel model =
                    provider.newsSourceModelObj.authorcardlistItemList[index];
                return AuthorcardlistItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToRedADecoration);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 40.v),
            decoration: AppDecoration.outlineBlack,
            child: _buildNextButton(context)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
