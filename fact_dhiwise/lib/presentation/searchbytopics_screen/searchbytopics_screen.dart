import '../searchbytopics_screen/widgets/topicsauthor_item_widget.dart';
import 'models/searchbytopics_model.dart';
import 'models/topicsauthor_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/searchbytopics_provider.dart';

class SearchbytopicsScreen extends StatefulWidget {
  const SearchbytopicsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchbytopicsScreenState createState() => SearchbytopicsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchbytopicsProvider(),
      child: SearchbytopicsScreen(),
    );
  }
}

class SearchbytopicsScreenState extends State<SearchbytopicsScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              Selector<SearchbytopicsProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.searchController,
                builder: (context, searchController, child) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_searching_topic".tr,
                  );
                },
              ),
              SizedBox(height: 17.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 13.v),
                    child: Text(
                      "lbl_news".tr,
                      style: CustomTextStyles.bodyLargeArialBluegray700_1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      children: [
                        Text(
                          "lbl_topics".tr,
                          style: CustomTextStyles.bodyLargeArial,
                        ),
                        SizedBox(height: 7.v),
                        Container(
                          height: 4.v,
                          width: 44.h,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 23.h,
                      bottom: 13.v,
                    ),
                    child: Text(
                      "lbl_author".tr,
                      style: CustomTextStyles.bodyLargeArialBluegray700_1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.v),
              _buildTopicsAuthor(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopicsAuthor(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Consumer<SearchbytopicsProvider>(
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
                provider.searchbytopicsModelObj.topicsauthorItemList.length,
            itemBuilder: (context, index) {
              TopicsauthorItemModel model =
                  provider.searchbytopicsModelObj.topicsauthorItemList[index];
              return TopicsauthorItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
