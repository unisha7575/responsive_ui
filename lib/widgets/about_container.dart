import 'package:flutter/material.dart';

class AboutContainer extends StatelessWidget {
  const AboutContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
              children: const [Text("About"), Spacer(), Text("Resume")],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text("A resume, sometimes spelled resume, also called a curriculum vitae, is a document created and used by a person to present their background, skills, and accomplishments. Resume can be used for a variety of reasons, but most often they are used to secure new employment."),
            )
          ],
        ),
      ),
    );
  }
}
