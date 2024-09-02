import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTapText;
  final String secondTapText;
  const AppTicketTabs({super.key, required this.firstTapText, required this.secondTapText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          AppTabs(
            tabText: firstTapText,
          ),
          AppTabs(
            tabText: secondTapText,
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
        color: !tabColor ? Colors.white : Colors.transparent,
        borderRadius: !tabBorder
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      child: Center(
        child: Text(tabText),
      ),
    );
  }
}
