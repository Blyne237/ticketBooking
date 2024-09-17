import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("All Tickets"),
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  child: Column(
                    children: ticketList
                        .map(
                          (singleTicket) => GestureDetector(
                            onTap: () {
                              var index = ticketList.indexOf(singleTicket);
                              print("index: $index");
                              Navigator.pushNamed(
                                  context, AppRoutes.ticketScreen,
                                  arguments: {"index": index});
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: TicketView(
                                ticket: singleTicket,
                                wholeScreen: true,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
