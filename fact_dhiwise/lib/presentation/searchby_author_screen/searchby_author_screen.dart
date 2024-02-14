import '../searchby_author_screen/widgets/userprofile_item_widget.dart';
import 'models/searchby_author_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:fals/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'provider/searchby_author_provider.dart';

class SearchbyAuthorScreen extends StatefulWidget {
  const SearchbyAuthorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchbyAuthorScreenState createState() => SearchbyAuthorScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchbyAuthorProvider(),
      child: SearchbyAuthorScreen(),
    );
  }
}

class SearchbyAuthorScreenState extends State<SearchbyAuthorScreen> {
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
              Selector<SearchbyAuthorProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.searchController,
                builder: (context, searchController, child) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_searching_author".tr,
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
                    padding: EdgeInsets.only(left: 23.h),
                    child: Column(
                      children: [
                        Text(
                          "lbl_author".tr,
                          style: CustomTextStyles.bodyLargeArial,
                        ),
                        SizedBox(height: 9.v),
                        Container(
                          height: 4.v,
                          width: 46.h,
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
                ],
              ),
              SizedBox(height: 24.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Consumer<SearchbyAuthorProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 32.v,
              );
            },
            itemCount:
                provider.searchbyAuthorModelObj.userprofileItemList.length,
            itemBuilder: (context, index) {
              UserprofileItemModel model =
                  provider.searchbyAuthorModelObj.userprofileItemList[index];
              return UserprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
