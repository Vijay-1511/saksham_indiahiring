import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vijay_s_application1/core/app_export.dart';
import 'package:vijay_s_application1/core/utils/size_utils.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/app_decoration.dart';
import '../../../widgets/app_bar/appbar_leading_image.dart';
import '../../../widgets/app_bar/appbar_title_image.dart';
import '../../../widgets/app_bar/appbar_trailing_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';




import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

// class AndroidSmallNineScreen extends StatefulWidget {
//   @override
//   State<AndroidSmallNineScreen> createState() => _AndroidSmallNineScreenState();
// }
//
// class _AndroidSmallNineScreenState extends State<AndroidSmallNineScreen> {
//   String selectedFilter = '';
//
//   Widget _getSelectedFilterScreen(String filter) {
//     switch (filter) {
//       case 'Job Type':
//         return _JobTypeScreen();
//       case 'Date Posted':
//         return _DatePostedScreen();
//       case 'Experience Level':
//         return _ExperienceLevelScreen();
//       case 'Salary':
//         return _SalaryScreen();
//       case 'Tag/Categories':
//         return _TagCategoriesScreen();
//       default:
//         return Container();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Filters",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.blue,
//           ),
//         ),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(2.0),
//           child: Divider(
//             color: Colors.blue,
//             thickness: 2.0,
//           ),
//         ),
//       ),
//       body: Row(
//         children: [
//           Container(
//             width: 150,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             margin: EdgeInsets.only(right: 10),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Quick Filter",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.white,
//                     thickness: 2.0,
//                     endIndent: 5,
//                   ),
//                   SizedBox(height: 20),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedFilter = 'Job Type';
//                       });
//                     },
//                     child: Text(
//                       "Job Type",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.white,
//                     thickness: 2.0,
//                     endIndent: 5,
//                   ),
//                   SizedBox(height: 20),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedFilter = 'Date Posted';
//                       });
//                     },
//                     child: Text(
//                       "Date Posted",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.white,
//                     thickness: 2.0,
//                     endIndent: 5,
//                   ),
//                   SizedBox(height: 20),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedFilter = 'Experience Level';
//                       });
//                     },
//                     child: Text(
//                       "Experience Level",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.white,
//                     thickness: 2.0,
//                     endIndent: 5,
//                   ),
//                   SizedBox(height: 20),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedFilter = 'Salary';
//                       });
//                     },
//                     child: Text(
//                       "Salary",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.white,
//                     thickness: 2.0,
//                     endIndent: 5,
//                   ),
//                   SizedBox(height: 20),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedFilter = 'Tag/Categories';
//                       });
//                     },
//                     child: Text(
//                       "Tag/Categories",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.white,
//                     thickness: 2.0,
//                     endIndent: 5,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: selectedFilter.isNotEmpty
//                 ? _getSelectedFilterScreen(selectedFilter)
//                 : Center(
//               child: Text(
//                 'Select a filter to view details',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//             ),
//           ),
//         ],
//
//       ),
//
//     );
//   }
// }



class AndroidSmallNineScreen extends StatefulWidget {
  @override
  State<AndroidSmallNineScreen> createState() => _AndroidSmallNineScreenState();
}

class _AndroidSmallNineScreenState extends State<AndroidSmallNineScreen> {
  String selectedFilter = '';

  Widget _getSelectedFilterScreen(String filter) {
    switch (filter) {
      case 'Job Type':
        return _JobTypeScreen();
      case 'Date Posted':
        return _DatePostedScreen();
      case 'Experience Level':
        return _ExperienceLevelScreen();
      case 'Salary':
        return _SalaryScreen();
      case 'Tag/Categories':
        return _TagCategoriesScreen();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filters",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: Divider(
            color: Colors.blue,
            thickness: 2.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              height:100,
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    width: 130,
                   // height: 550,
                    decoration: BoxDecoration(
                      color: Color(0XFF1976D2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(right: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Quick Filter",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 2.0,
                            endIndent: 5,
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFilter = 'Job Type';
                              });
                            },
                            child: Text(
                              "Job Type",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 2.0,
                            endIndent: 5,
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFilter = 'Date Posted';
                              });
                            },
                            child: Text(
                              "Date Posted",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 2.0,
                            endIndent: 5,
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFilter = 'Experience Level';
                              });
                            },
                            child: Text(
                              "Experience Level",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 2.0,
                            endIndent: 5,
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFilter = 'Salary';
                              });
                            },
                            child: Text(
                              "Salary",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 2.0,
                            endIndent: 5,
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFilter = 'Tag/Categories';
                              });
                            },
                            child: Text(
                              "Tag/Categories",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 2.0,
                            endIndent: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Visibility(
                      visible: selectedFilter.isNotEmpty,
                      child: _getSelectedFilterScreen(selectedFilter),
                    ),
                  ),
                  Align(

                    alignment: Alignment.bottomCenter,
                    child: Divider(
                      color: Colors.blue,
                      thickness: 2.0,
                      height: 10,
                    ),
                  ),


                ],
              ),
            ),
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle left button press
                  },
                  child: Text("Left Button"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle right button press
                  },
                  child: Text("Right Button"),
                ),
              ),

            ],

          ),
        ],
      ),
    );
  }
}

class _JobTypeScreen extends StatefulWidget {
  @override
  State<_JobTypeScreen> createState() => _JobTypeScreenState();
}

class _JobTypeScreenState extends State<_JobTypeScreen> {
  bool freelancerSelected = false;
  bool partTimeSelected = false;
  bool fullTimeSelected = false;
  bool temporarySelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              Text(
                "Select All",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 20),
          buildToggleRow("Freelancer", freelancerSelected, (value) {
            setState(() {
              freelancerSelected = value;
            });
          }),
          SizedBox(height: 20),
          buildToggleRow("Part time", partTimeSelected, (value) {
            setState(() {
              partTimeSelected = value;
            });
          }),
          SizedBox(height: 20),
          buildToggleRow("Full time", fullTimeSelected, (value) {
            setState(() {
              fullTimeSelected = value;
            });
          }),
          SizedBox(height: 20),
          buildToggleRow("Temporary", temporarySelected, (value) {
            setState(() {
              temporarySelected = value;
            });
          }),
        ],
      ),
    );
  }

  Widget buildToggleRow(String text, bool value, ValueChanged<bool> onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 16, color: Colors.black)),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.blue,
          inactiveTrackColor: Colors.white,
          inactiveThumbColor: Colors.blue,
        ),
      ],
    );
  }
}

class _DatePostedScreen extends StatefulWidget {
  @override
  State<_DatePostedScreen> createState() => _DatePostedScreenState();
}

class _DatePostedScreenState extends State<_DatePostedScreen> {
  String selectedJobType = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              Text(
                "Select All",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 20),
          buildJobTypeRadioButton("Last 24 hours"),
          SizedBox(height: 20),
          buildJobTypeRadioButton("Last 7 days"),
          SizedBox(height: 20),
          buildJobTypeRadioButton("Last 14 days"),
          SizedBox(height: 20),
          buildJobTypeRadioButton("Last 30 days"),
        ],
      ),
    );
  }

  Widget buildJobTypeRadioButton(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedJobType = text;
        });
      },
      child: Row(
        children: [
          Radio<String>(
            value: text,
            groupValue: selectedJobType,
            onChanged: (value) {
              setState(() {
                selectedJobType = value!;
              });
            },
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _ExperienceLevelScreen extends StatefulWidget {
  @override
  State<_ExperienceLevelScreen> createState() => _ExperienceLevelScreenState();
}

class _ExperienceLevelScreenState extends State<_ExperienceLevelScreen> {
  String selectedExperience = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
              Text(
                "Select All",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 20),
          buildExperienceRadioButton("1 Year"),
          SizedBox(height: 20),
          buildExperienceRadioButton("2 Year"),
          SizedBox(height: 20),
          buildExperienceRadioButton("3 Year"),
          SizedBox(height: 20),
          buildExperienceRadioButton("4 Year"),
        ],
      ),
    );
  }

  Widget buildExperienceRadioButton(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedExperience = text;
        });
      },
      child: Row(
        children: [
          Radio<String>(
            value: text,
            groupValue: selectedExperience,
            onChanged: (value) {
              setState(() {
                selectedExperience = value!;
              });
            },
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _SalaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Salary Screen'));
  }
}

class _TagCategoriesScreen extends StatefulWidget {
  @override
  State<_TagCategoriesScreen> createState() => _TagCategoriesScreenState();
}

class _TagCategoriesScreenState extends State<_TagCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 40.0),
        // Add margin from the top
        //color: Colors.grey,
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                Text(
                  "Android",
                  style: TextStyle(color: Colors.black,fontSize: 19),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                Text(
                  "Development",
                  style: TextStyle(color: Colors.black,fontSize: 19),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                Text(
                  "React",
                  style: TextStyle(color: Colors.black,fontSize: 19),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                Text(
                  "Word Press",
                  style: TextStyle(color: Colors.black,fontSize: 19),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                Text(
                  "Design",
                  style: TextStyle(color: Colors.black,fontSize: 19),
                ),
              ],
            ),
          ],
        ),
      ),

    );

  }
}

// Navigation back to the previous Screen
void onTapArrowleftone(BuildContext context) {
  Navigator.pop(context);
}

