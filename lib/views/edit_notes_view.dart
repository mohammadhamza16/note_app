import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Edit Note',
                iconData: Icons.check,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
