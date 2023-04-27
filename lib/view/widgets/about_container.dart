import 'package:flutter/material.dart';

import '../../constants/json_data_file.dart';



class AboutContainer extends StatelessWidget {
  const AboutContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white10,
      ),
      height: MediaQuery.of(context).size.height * 0.36,
      width: MediaQuery.of(context).size.width * 0.37,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [Text(allData['resume']), Spacer(), Text(allData['resume'])],
            ),
             Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                  allData['resumeAboutText']
            )
             ) ],
        ),
      ),
    );
  }
}
