import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_notes_app_bar.dart';
import 'package:note_app/widgets/custom_notes_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Column(
            children: [
              CustomNotesAppBar(),
              CustomNotesBody(),
            ],
          ),
        ),
      ),
    );
  }
}
