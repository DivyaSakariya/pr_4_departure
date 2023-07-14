import 'package:flutter/material.dart';
import 'package:pr_4_departure/controller/chapter_controller.dart';
import 'package:pr_4_departure/controller/theme_controller.dart';
import 'package:pr_4_departure/widgets/drawer.dart';
import 'package:provider/provider.dart';

import '../../model/chapter_model.dart';

class ChapterScreen extends StatelessWidget {
  const ChapterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bhagavad Gita"),
        actions: [
          Consumer<ThemeController>(
            builder: (context, themeProvider, child) {
              return IconButton(
                onPressed: () {
                  themeProvider.isDark = !themeProvider.isDark;
                },
                icon: Icon(
                  themeProvider.isDark
                      ? Icons.light_mode
                      : Icons.dark_mode_rounded,
                ),
              );
            },
          ),
        ],
      ),
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<ChapterController>(
          builder: (context, provider, child) {
            return provider.allChapter.isNotEmpty
                ? ListView.builder(
                    itemCount: provider.allChapter.length,
                    itemBuilder: (context, index) {
                      ChapterModel data = provider.allChapter[index];

                      return Card(
                        child: ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(data.img),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          title: Text(data.name_translation),
                          subtitle:
                              Text("${data.verses_count} Verses"),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color:
                                  Provider.of<ThemeController>(context).isDark
                                      ? Colors.white
                                      : Colors.black87,
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('detail_screen', arguments: index);
                            },
                          ),
                        ),
                      );
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
