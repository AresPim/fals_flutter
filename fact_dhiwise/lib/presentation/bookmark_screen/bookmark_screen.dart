import '../bookmark_screen/widgets/cardcomponentlist1_item_widget.dart';
import 'models/bookmark_model.dart';
import 'models/cardcomponentlist1_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/presentation/homepage_page/homepage_page.dart';
import 'package:fals/widgets/custom_bottom_bar.dart';
import 'package:fals/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/bookmark_provider.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BookmarkScreenState createState() => BookmarkScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookmarkProvider(),
      child: BookmarkScreen(),
    );
  }
}

class BookmarkScreenState extends State<BookmarkScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 23.v),
              Text(
                "lbl_bookmark".tr,
                style: CustomTextStyles.headlineLargeBlack90002,
              ),
              SizedBox(height: 16.v),
              Selector<BookmarkProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.searchController,
                builder: (context, searchController, child) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                    contentPadding: EdgeInsets.only(
                      top: 13.v,
                      right: 30.h,
                      bottom: 13.v,
                    ),
                  );
                },
              ),
              SizedBox(height: 24.v),
              _buildCardComponentList(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardComponentList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Consumer<BookmarkProvider>(
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
                provider.bookmarkModelObj.cardcomponentlist1ItemList.length,
            itemBuilder: (context, index) {
              Cardcomponentlist1ItemModel model =
                  provider.bookmarkModelObj.cardcomponentlist1ItemList[index];
              return Cardcomponentlist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
