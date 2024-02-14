import '../notification_screen/widgets/followsection_item_widget.dart';
import 'models/followsection_item_model.dart';
import 'models/notification_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/app_bar/appbar_leading_image.dart';
import 'package:fals/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fals/widgets/app_bar/appbar_trailing_image.dart';
import 'package:fals/widgets/app_bar/custom_app_bar.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'provider/notification_provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  NotificationScreenState createState() => NotificationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationProvider(),
        child: NotificationScreen());
  }
}

// ignore_for_file: must_be_immutable
class NotificationScreenState extends State<NotificationScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: Column(children: [
                                _buildFollowSection(context),
                                SizedBox(height: 16.v),
                                _buildFrameRow(context)
                              ]))))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_notification".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame,
              margin: EdgeInsets.fromLTRB(23.h, 16.v, 23.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildFollowSection(BuildContext context) {
    return Consumer<NotificationProvider>(builder: (context, provider, child) {
      return GroupedListView<FollowsectionItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: provider.notificationModelObj.followsectionItemList ?? [],
          groupBy: (element) => element.groupBy!,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
                padding: EdgeInsets.only(top: 17.v, bottom: 14.v),
                child: Text(value,
                    style: CustomTextStyles.titleMediumBlack90002_1
                        .copyWith(color: appTheme.black90002)));
          },
          itemBuilder: (context, model) {
            return FollowsectionItemWidget(model);
          },
          separator: SizedBox(height: 16.v));
    });
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUserDeepPurpleA200,
              height: 70.adaptSize,
              width: 70.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 12.v)),
          Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 263.h,
                        child: Text("msg_m_ms_has_posted".tr,
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyLargePrimaryContainer
                                .copyWith(height: 1.50))),
                    SizedBox(height: 45.v),
                    Text("lbl_1_day_ago".tr,
                        style: CustomTextStyles.bodyMedium13)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Chat:
        return "/";
      case BottomBarEnum.Bookmark:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
