import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
        centerTitle: true,
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
                            (singleTicket) => TicketView(
                              ticket: singleTicket, wholeScreen: true,
                            ),
                          )
                          .toList()),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
