import '../models/alllist_item_model.dart';
import 'package:fals/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlllistItemWidget extends StatelessWidget {
  AlllistItemWidget(
    this.alllistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AlllistItemModel alllistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 19.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            alllistItemModelObj.all!,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
