import 'package:debasmita_assignment/utils/portfolio_responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class WorkExperience extends StatelessWidget {
  final String firstLine;
  final String secondLine;
  final Color textColor;
  final Color bgColor;

   WorkExperience(
      {Key? key, required this.firstLine, required this.secondLine, required this.textColor, required this.bgColor, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobile(context)?MediaQuery.of(context).size.height * 0.3:(Responsive.isTablet(context))?MediaQuery.of(context).size.height * 0.3:null,
      width: Responsive.isMobile(context)?MediaQuery.of(context).size.width:null,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstLine,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900, color: textColor),
          ),
          Text(
            secondLine,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: textColor),
          ),
        ],
      ),
    );
  }
}
