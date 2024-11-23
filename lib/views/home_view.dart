import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_notes_app_bar.dart';
import 'package:note_app/widgets/custom_notes_body.dart';
import 'package:note_app/widgets/note_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => ShowModalBottomSheet(),
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Column(
            children: [
              CustomNotesAppBar(),
              Expanded(
                child: NoteListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowModalBottomSheet extends StatelessWidget {
  const ShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
