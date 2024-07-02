import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vijay_s_application1/core/app_export.dart';
import 'package:vijay_s_application1/presentation/android_small_eight_screen/widgets/employ_jobcard.dart';
//import 'package:vijay_s_application1/presentation/android_small_eight_screen/widgets/empoly_joblisting_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vijay_s_application1/core/app_export.dart';
import 'package:vijay_s_application1/presentation/android_small_eight_screen/widgets/employ_jobcard.dart';
import 'package:vijay_s_application1/presentation/android_small_eight_screen/widgets/settings_and_activity.dart';
//import 'package:vijay_s_application1/presentation/android_small_eight_screen/widgets/empoly_joblisting_item_widget.dart';

import '../../../theme/custom_text_style.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/app_bar/appbar_title_image.dart';
import '../../../widgets/app_bar/appbar_trailing_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_search_view.dart';
import 'android_small_nine_filterscreen.dart';
import 'joblisting_item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController searchController = TextEditingController();
  TextEditingController searchController1 = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  get dropdownItemList => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        drawer: _buildDrawer(context),
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
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Find Your Dream Jobs",
                      style: TextStyle(fontSize: 35,
                          fontFamily: 'Kotta_One',
                          color: Colors.blue,
                      fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 0.0001,),
                _build(context),
                SizedBox(height: 1.v,),
                _buildRowUserOne(context),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Latest Job in IndiaHiring ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text("Popular Categories :",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                SizedBox(height: 20.v,),

                _buildJobListing(context),
                SizedBox(height: 30.v,),
                Text("TOP COMPANIES HIRING NOW :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                SizedBox(height: 20,),
                _buildJobListing(context),
                SizedBox(height: 30,),
                Text("FEATURED JOBS :",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                SizedBox(height: 20.v,),
                _buildJobListing(context),


                // Correct method call
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          // Change the margin as desired
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,

              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'School',
                ),
              ],
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              backgroundColor: Colors.blue,
              elevation: 0,
              // Set elevation to 0 to remove shadow from BottomNavigationBar
              selectedIconTheme: IconThemeData(size: 30),
              unselectedIconTheme: IconThemeData(size: 24),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  // --> Employ Cards
  Widget _buildJobListing(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: ListView.separated(
        // Remove physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 9.v,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return employJobCard();
        },
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Image.asset(
        'assets/images/img_whatsapp_image_2024_04_08.png',
        // Replace with your image path
        width: 150.0,
        height: 150.0,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.message,
            size: 30,
            color: Colors.blue,
          ),
          onPressed: () {
            // Handle message action
          },
        ),
        IconButton(
          icon: Icon(
            Icons.notifications,
            size: 30,
            color: Colors.blue,
          ),
          onPressed: () {
            // Handle notification action
          },
        ),
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: InkWell(
          onTap: () {
            toggleDrawer();
          },
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              color: Colors
                  .white, // Change icon color to contrast with blue background
            ),
          ),
        ),
      ),
    );
  }

  void toggleDrawer() {
    if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
      _scaffoldKey.currentState?.closeDrawer();
    } else {
      _scaffoldKey.currentState?.openDrawer();
    }
  }

  Drawer _buildDrawer(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;

    return Drawer(
      width: screenSize.width * 0.7,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: screenSize.height * 0.30,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.height * 0.05),

                    child: Image.asset(
                      'assets/images/img_whatsapp_image_2024_04_08.png',
                      height: 150,
                      width: 300,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 1,
                    width: 100,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage(
                            'assets/avatar.png'), // Placeholder image asset
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Arjun Khousi',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,),
                          ),
                          Text(
                            'john@example.com',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'Home',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 25
              ),
            ),
            onTap: () {
              toggleDrawer();
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'My Profile',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25
              ),
            ),
            onTap: () {
              // Handle item 2 action
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'My Jobs',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25
              ),
            ),
            onTap: () {
              // Handle item 4 action
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'My Reviews',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25
              ),
            ),
            onTap: () {
              // Handle item 3 action
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'Empolyers',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25
              ),
            ),
            onTap: () {
              // Handle item 3 action
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'Jobseekers',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25
              ),
            ),
            onTap: () {
              // Handle item 3 action
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'Company Reviews',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25
              ),
            ),
            onTap: () {
              // Handle item 4 action
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'Help Center',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25
              ),
            ),
            onTap: () {
              // Handle item 5 action
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(
              'Setting',
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 25
              ),
            ),
            onTap: () {
              // Handle item 5 action
             Navigator.push(context, 
             MaterialPageRoute(builder: (context)=> Settings_and_activity()));

            },
          ),
          Divider(color: Colors.black),

          SizedBox(height: 100,)

        ],
      ),
    );
  }

  PreferredSizeWidget _build(BuildContext context) {
    return CustomAppBar(

      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imageline,
        width: 200.0, // Increase the width
        height: 200.0, // Increase the height
      ),
    );
  }

  Widget _buildRowUserOne(BuildContext context) {
    var dropdownItemList;
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
