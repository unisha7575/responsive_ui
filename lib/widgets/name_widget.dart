import 'package:debasmita_assignment/portfolio_responsive.dart';
import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isTablet(context)?MediaQuery.of(context).size.width:MediaQuery.of(context).size.width * 0.24,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: const [Text("Name:"), Spacer(), Text("Bima Sakti")],
        ),
      ),
    );
  }
}
