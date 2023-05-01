import 'package:debasmita_assignment/constants/json_data_file.dart';
import 'package:flutter/material.dart';

import '../../utils/portfolio_responsive.dart';


class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(15)),
      width:Responsive.isMobile(context)? MediaQuery.of(context).size.width :null,
      height: !Responsive.isTablet(context)?MediaQuery.of(context).size.height * 0.07:null,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text(allData['searchName']),
            const Spacer(),
            Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}

