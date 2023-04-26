import 'package:flutter/material.dart';

import '../portfolio_responsive.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(15)),
      width:Responsive.isMobile(context)? MediaQuery.of(context).size.width :null,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: const [
            Text("Bim Graph"),
            Spacer(),
            Icon(Icons.menu),
          ],
        ),
      ),
    );
  }
}

