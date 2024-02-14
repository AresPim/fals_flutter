import '../search_screen/widgets/searchview_item_widget.dart';
import 'models/search_model.dart';
import 'models/searchview_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchScreenState createState() => SearchScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchProvider(),
      child: SearchScreen(),
    );
  }
}

class SearchScreenState extends State<SearchScreen> {
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
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              Selector<SearchProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.searchController,
                builder: (context, searchController, child) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_searching_news".tr,
                    contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                  );
                },
              ),
              SizedBox(height: 17.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "lbl_news".tr,
                        style: CustomTextStyles.bodyLargeArial,
                      ),
                      SizedBox(height: 9.v),
                      Container(
                        height: 4.v,
                        width: 40.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0, 0),
                            end: Alignment(1.07, 1.65),
                            colors: [
                              theme.colorScheme.primary,
                              appTheme.redA10001,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_topics".tr,
                      style: CustomTextStyles.bodyLargeArialBluegray700_1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 23.h,
                      bottom: 11.v,
                    ),
                    child: Text(
                      "lbl_author".tr,
                      style: CustomTextStyles.bodyLargeArialBluegray700_1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 23.v),
              _buildSearchView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Consumer<SearchProvider>(
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
            itemCount: provider.searchModelObj.searchviewItemList.length,
            itemBuilder: (context, index) {
              SearchviewItemModel model =
                  provider.searchModelObj.searchviewItemList[index];
              return SearchviewItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
