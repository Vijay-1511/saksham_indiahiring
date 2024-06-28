import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vijay_s_application1/core/app_export.dart';

import '../../../theme/custom_text_style.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/app_bar/appbar_title_image.dart';
import '../../../widgets/app_bar/appbar_trailing_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_search_view.dart';
import 'android_small_nine_filterscreen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  TextEditingController searchController1 = TextEditingController();

  get dropdownItemList => null;


  


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 8.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Freshers job vacancy",
                  ),
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: CustomSearchView(
                    controller: searchController1,
                    hintText: "Enter city or locality",
                  ),
                ),
                SizedBox(height: 28.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Find Your Dream Jobs",style: TextStyle(fontSize: 30),)
                    ]
                ),
                _build(context),
                SizedBox(height: 24.v),
                _buildRowUserOne(context),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Latest Job in IndiaHiring ",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Jobs in MP nagar, Bhopal, Madhya Pradesh",
                    style: CustomTextStyles.bodySmallAsap,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    " 308 Jobs ",
                    style: CustomTextStyles.bodySmallAsap,
                  ),
                ),
                SizedBox(height: 8.v),
                //_buildJobListing(context)
              ],
            ),
          ),
        ),
      ),
    );

  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgWhatsappImage20240408,
        width: 150.0, // Increase the width
        height: 150.0, // Increase the height
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgHome,
          margin: EdgeInsets.fromLTRB(26.h, 20.v, 26.h, 19.v),
        ),
      ],
    );
  }

  PreferredSizeWidget _build(BuildContext context) {
    return CustomAppBar(

      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imageline,
        width: 150.0, // Increase the width
        height: 150.0, // Increase the height
      ),
    );
  }

  Widget _buildRowUserOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Container(
              height: 35.v,
              width: 51.h,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AndroidSmallNineScreen(),
                    ),
                  );
                },
                child: CustomImageView(
                  height: 19.v,
                  width: 27.h,
                  alignment: Alignment.topCenter,
                  imagePath: ImageConstant.imgUser,
                ),
              ),
            ),
            SizedBox(width: 16.0),
            CustomDropDown(
              width: 121.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 7.h,
                ),
              ),
              hintText: "Remote",
              items: dropdownItemList,
            ),
            SizedBox(width: 16.0),
            CustomDropDown(
              width: 121.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 7.h,
                ),
              ),
              hintText: "Date posted",
              items: dropdownItemList,
            ),
            SizedBox(width: 16.0),
            CustomDropDown(
              width: 121.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 7.h,
                ),
              ),
              hintText: "Job Category",
              items: dropdownItemList,
            ),
            SizedBox(width: 16.0),
            CustomDropDown(
              width: 121.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 7.h,
                ),
              ),
              hintText: "pay",
              items: dropdownItemList,
            ),
            SizedBox(width: 16.0),
            CustomDropDown(
              width: 121.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 7.h,
                ),
              ),
              hintText: "Easily apply",
              items: dropdownItemList,
            ),
            SizedBox(width: 16.0),
            CustomDropDown(
              width: 121.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 7.h,
                ),
              ),
              hintText: "Job type",
              items: dropdownItemList,
            ),
            SizedBox(width: 16.0),
            CustomDropDown(
              width: 121.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 7.h,
                ),
              ),
              hintText: "Location",
              items: dropdownItemList,
            ),
            SizedBox(width: 16.0),
            CustomDropDown(
              width: 121.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 9.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 3.v,
                  width: 7.h,
                ),
              ),
              hintText: "Company",
            ),
            //SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
  
 


  // Navigation back to the previous Screen
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}



