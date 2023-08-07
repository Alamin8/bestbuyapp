import 'package:best_buy/utils/routes/routes_name.dart';
import 'package:best_buy/view_model/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userPreference = Provider.of<UserViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: const BoxDecoration(
              color: Color(0xffF8F8FF),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    decoration: const BoxDecoration(
                      color: Color(0xff6C60E0),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 20, left: 24, right: 24, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/profile.png',
                                        height: 60,
                                        width: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Wellcome back 👋",
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xffbfbdbd),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "OpenSans",
                                            ),
                                          ),
                                          Text(
                                            "Alamin Mirdha",
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: const Color(0xfff4f3fd),
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "OpenSans",
                                            ),
                                          ),
                                          Text(
                                            "Staff ID : 356374 - 12729",
                                            style: const TextStyle(
                                              fontSize: 10,
                                              color: Color(0xffbfbdbd),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "OpenSans",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.notifications_sharp,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, left: 24, right: 24, bottom: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Best Buy Jamgora Ashulia",
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffbfbdbd),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "OpenSans",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 15, left: 24, right: 24, bottom: 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                "Menu",
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffbfbdbd),
                                  fontWeight: FontWeight.w600,
                                  // fontFamily: "OpenSans",
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.dashboard_sharp,
                                size: 16,
                                color: Color(0xffbfbdbd),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: ListView(
                              children: [
                                SizedBox(height: 10,),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [

                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.person,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Staff",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.shopping_cart,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Sales",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.insights,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Report",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                        Navigator.pushNamed(context, RoutesName.inventoryActionScreen);
                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.inventory,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Inventory",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.chat,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Chat",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.calculate,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Calculate",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.construction,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Service",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.app_registration,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Posting",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.edit_calendar,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Event",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.sticky_note_2,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Notes",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.settings,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Setting",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.info,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Info",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.folder,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Files",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.rss_feed,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Feed",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          userPreference.remove().then((value) =>
                                              Navigator.pushNamed(context, RoutesName.login)
                                          );
                                        },
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            color: Color(0xff6C60E0),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.logout,
                                                color: Colors.white,
                                                size: 35,
                                              ),
                                              Text(
                                                "Logout",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                  fontFamily: "OpenSans",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(
                                  height: 50,
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
