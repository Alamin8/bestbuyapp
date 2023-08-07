import 'package:flutter/material.dart';

class StaffList extends StatefulWidget {
  const StaffList({Key? key}) : super(key: key);

  @override
  State<StaffList> createState() => _StaffListState();
}

class _StaffListState extends State<StaffList> {
  @override
  Widget build(BuildContext context) {
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
                                "Staff",
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
