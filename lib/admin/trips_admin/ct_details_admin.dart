import 'package:flutter/material.dart';

import '../../../common/colors.dart';
import '../../../common/table.dart';
import '../../common/appbar.dart';
import '../../common/text_style.dart';
import 'ct_amenities.dart';
import 'ct_crew_admin.dart';
import 'ct_passangers_admin.dart';
import 'ct_planes_admin.dart';
import 'invoice_unpaid_admin.dart';

class CtDetailsAdmin extends StatefulWidget {
  const CtDetailsAdmin({super.key});

  @override
  State<CtDetailsAdmin> createState() => _CtDetailsAdminState();
}

class _CtDetailsAdminState extends State<CtDetailsAdmin>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdminBack(
        title: 'Trips',
      ),
      body: Container(
        color: cardColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            CurrentTrips(),
            //
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: textSecondary,
                unselectedLabelStyle: CustomTextStyle.ts14reg,
                labelColor: primaryColor,
                labelStyle: CustomTextStyle.pc14semi,
                tabs: [
                  Tab(
                    text: 'Details',
                  ),
                  Tab(
                    text: 'Passengers',
                  ),
                  Tab(
                    text: 'Planes',
                  ),
                  Tab(
                    text: 'Crew',
                  ),
                  Tab(
                    text: 'Amenities',
                  ),
                  Tab(
                    text: 'Invoices',
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: cardColor,
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  CtDetails(),
                  CtPassengerAdmin(),
                  CtPlaneAdmin(),
                  CtCrewAdmin(),
                  CtAmenitiesAdmin(),
                  UnpInvoiceAdmin(),
                ],
                controller: _tabController,
              ),
            ),

            //
          ],
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
class CurrentTrips extends StatefulWidget {
  const CurrentTrips({super.key});

  @override
  State<CurrentTrips> createState() => _CurrentTripsState();
}

class _CurrentTripsState extends State<CurrentTrips> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //

        //creator
        InprogressTitle(id: 'L9021', btntext: 'Inprogress'),

        //Table
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TableW(
                heading: 'Date Departed',
                data: '02/31/2022',
              ),
              TableC(
                heading: 'Pilot',
                data: 'Jerome Baga',
              ),
              TableW(
                heading: 'Plane',
                data: 'A319',
              ),
              TableC(
                heading: 'Key Passenger',
                data: 'Moses Barry',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//
class CtDetails extends StatelessWidget {
  const CtDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(),
        ),
        //creator
        WithoutBtnTitle(
          id: 'Moses Dabo',
          date: '23/08/2022 | 9:00 AM -> 23/08/2022 | 9:00 AM',
        ),

        //Table
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TableW(
                heading: 'Trip',
                data: 'L9021',
              ),
              TableC(
                heading: 'Passengers',
                data: '06',
              ),
              TableW(
                heading: 'Plane',
                data: 'Falcon 8x',
              ),
              TableC(
                heading: 'City',
                data: 'Ouagadougou',
              ),
              TableW(
                heading: 'Cost',
                data: '-',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
