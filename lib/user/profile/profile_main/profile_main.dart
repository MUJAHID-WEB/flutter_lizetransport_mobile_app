import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lize/common/text_style.dart';

import '../../../common/appbar.dart';
import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../org_info/org_info.dart';
import '../profile_visa/profile_visa.dart';
import '../user_info/user_info.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUser(
        title: 'My Profile',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  color: cardColor,
                  // height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 24, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //heading
                            Text(
                              'User Information',
                              style: CustomTextStyle.tp16semi,
                            ),
                            //dropdown
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: textPrimary10,
                                  //border: Border.all(width: 1, color: blackColor05),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: ImageIcon(
                                  AssetImage(
                                    'assets/image/arrow_up.png',
                                  ),
                                  color: textPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Divider(
                          thickness: 1,
                          color: borderColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Avatar
                            Row(
                              children: [
                                Image.asset(
                                  'assets/image/avatar.jpg',
                                  height: 80,
                                  width: 80,
                                ),

                                //Name
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //Name
                                      Text(
                                        'Mr. John Doe',
                                        style: CustomTextStyle.tp20semi,
                                      ),
                                      //Date
                                      Text(
                                        'May 16, 1969',
                                        style: CustomTextStyle.ts14reg,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            //edit
                            Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  //border: Border.all(width: 1, color: blackColor05),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const UserInfo()),
                                    );
                                  },
                                  icon: ImageIcon(
                                    AssetImage(
                                      'assets/image/edit.png',
                                    ),
                                    color: cardColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Divider(
                          thickness: 1,
                          color: borderColor,
                        ),
                      ),
                      //repeated
                      PrInfo(
                        icon: AssetImage(
                          'assets/image/location.png',
                        ),
                        info: 'Ouagadougou, Burkina Faso',
                      ),
                      PrInfo(
                        icon: AssetImage(
                          'assets/image/calender.png',
                        ),
                        info: 'Joined January, 11, 2012',
                      ),
                      PrInfo(
                        icon: AssetImage(
                          'assets/image/language.png',
                        ),
                        info: 'French',
                      ),
                      PrInfo(
                        icon: AssetImage(
                          'assets/image/phoneicon.png',
                        ),
                        info: '310-437-2766',
                      ),
                      PrInfo(
                        icon: AssetImage(
                          'assets/image/envelopicon.png',
                        ),
                        info: 'lti@outlook.com',
                      ),
                    ],
                  ),
                ),

                //
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Container(
                    color: cardColor,
                    // height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 24, 30, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //heading
                              Text(
                                'Organisation Information',
                                style: CustomTextStyle.tp16semi,
                              ),
                              //dropdown
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: textPrimary10,
                                    //border: Border.all(width: 1, color: blackColor05),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: ImageIcon(
                                    AssetImage(
                                      'assets/image/arrow_up.png',
                                    ),
                                    color: textPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Divider(
                            thickness: 1,
                            color: borderColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Avatar
                              Row(
                                children: [
                                  //Name
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //Name
                                      Text(
                                        'Fondation Ebomaf',
                                        style: CustomTextStyle.tp20semi,
                                      ),
                                      //Date
                                      Text(
                                        'Not for Profit',
                                        style: CustomTextStyle.ts14reg,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //edit
                              Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    //border: Border.all(width: 1, color: blackColor05),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OrgInfo()),
                                      );
                                    },
                                    icon: ImageIcon(
                                      AssetImage(
                                        'assets/image/edit.png',
                                      ),
                                      color: cardColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Divider(
                            thickness: 1,
                            color: borderColor,
                          ),
                        ),
                        //repeated
                        PrInfo(
                          icon: AssetImage(
                            'assets/image/location.png',
                          ),
                          info: '1290 Rue du Chef, Ouagadougou, Burkina Faso',
                        ),

                        PrInfo(
                          icon: AssetImage(
                            'assets/image/phoneicon.png',
                          ),
                          info: '+1(226) 45 23 12 22',
                        ),
                        PrInfo(
                          icon: AssetImage(
                            'assets/image/envelopicon.png',
                          ),
                          info: 'info@fondationebomaf.org',
                        ),
                      ],
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Container(
                    color: cardColor,
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Travel Information',
                                  style: CustomTextStyle.tp16semi,
                                ),
                                Row(
                                  children: [
                                    ImageIcon(
                                      AssetImage(
                                        'assets/image/filter.png',
                                      ),
                                      color: textSecondary,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Filter',
                                      style: CustomTextStyle.ts14med,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //

                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Divider(),
                          ),
                          //

                          TabBar(
                            //isScrollable: true,
                            unselectedLabelColor: textSecondary,
                            unselectedLabelStyle: CustomTextStyle.ts14reg,
                            labelColor: secondaryColor,
                            labelStyle: CustomTextStyle.sc14semi,
                            tabs: const [
                              Tab(
                                text: 'Passport',
                              ),
                              Tab(
                                text: 'Visa',
                              ),
                            ],
                            controller: _tabController,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: cardColor,
                          ),
                          Expanded(
                            child: TabBarView(
                              clipBehavior: Clip.none,
                              children: const [
                                Passport(),
                                Visa(),
                              ],
                              controller: _tabController,
                            ),
                          ),
                        ],
                      ),
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

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

//
class PrInfo extends StatelessWidget {
  const PrInfo({super.key, required this.icon, required this.info});
  final AssetImage icon;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
      child: Row(
        children: [
          //Icon
          ImageIcon(
            icon,
            color: textPrimary,
          ),
          //Detail
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 272,
              child: Text(
                info,
                style: CustomTextStyle.tp16med,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
class Passport extends StatelessWidget {
  const Passport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(),
            ),

            //creator
            PaidVarTitle(
              id: 'Embassy Cote d\'Ivoire in...',
              date: '23/08/2022 -> 30/08/2026',
              btntext: 'Verified',
            ),

            //Table
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TableW(
                    heading: 'Number of Entries',
                    data: 'Multiple',
                  ),
                  TableC(
                    heading: 'Number',
                    data: '48982244',
                  ),
                ],
              ),
            ),
          ],
        ),
        //
        Column(
          children: [
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(),
            ),
            //creator
            UnpExTitle(
              id: 'Embassy Cote d\'Ivoire in...',
              date: '23/08/2022 -> 30/08/2026',
              btntext: 'Unverified',
            ),

            //Table
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TableW(
                    heading: 'Number of Entries',
                    data: 'Multiple',
                  ),
                  TableC(
                    heading: 'Number',
                    data: '48982244',
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Visa extends StatelessWidget {
  const Visa({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(),
            ),
            //creator
            PaidVarTitle(
              id: 'Togo',
              date: '23/08/2022 -> 30/08/2022',
              btntext: 'Valid',
            ),

            //Table
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TableW(
                    heading: 'Type',
                    data: 'Diplomatique',
                  ),
                  TableC(
                    heading: 'Number',
                    data: '48982244',
                  ),
                  TableW(
                    heading: 'First Name',
                    data: 'John',
                  ),
                  TableC(
                    heading: 'Middle Name',
                    data: 'Goza',
                  ),
                  TableW(
                    heading: 'Last Name',
                    data: 'Doe',
                  ),
                ],
              ),
            ),
          ],
        ),
        //
        Column(
          children: [
            //
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Divider(),
            ),
            //creator
            UnpExTitle(
              id: 'Togo',
              date: '23/08/2022 -> 30/08/2022',
              btntext: 'Expired',
            ),

            //Table
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TableW(
                    heading: 'Type',
                    data: 'Diplomatique',
                  ),
                  TableC(
                    heading: 'Number',
                    data: '48982244',
                  ),
                  TableW(
                    heading: 'First Name',
                    data: 'John',
                  ),
                  TableC(
                    heading: 'Middle Name',
                    data: 'Goza',
                  ),
                  TableW(
                    heading: 'Last Name',
                    data: 'Doe',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
