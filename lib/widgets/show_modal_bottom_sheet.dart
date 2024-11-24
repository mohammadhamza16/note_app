import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_buttom.dart';

import 'custom_text_field.dart';

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'title',
            ),
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButtom(),
          ],
        ),
      ),
    );
  }
}
