import 'package:debasmita_assignment/image_paths.dart';
import 'package:debasmita_assignment/portfolio_responsive.dart';
import 'package:flutter/material.dart';

class BasedInWidget extends StatelessWidget {
  const BasedInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            ImagePaths.basedInBGImage,
            height: MediaQuery.of(context).size.height * 0.35,
            width: Responsive.isDesktop(context)?MediaQuery.of(context).size.width * 0.24:MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 10,
            right: 10,
            left: 10,
            child: Row(
              children: const [Text("Based in "), Spacer(), Text("Based in ")],
            ))
      ],
    );
  }
}
