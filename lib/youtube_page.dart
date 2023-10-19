import 'package:flutter/material.dart';
import 'package:poc_youtube/youtube_frame.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({super.key});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry pagePadding = EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).orientation == Orientation.portrait
            ? 16
            : 24,
        vertical: MediaQuery.of(context).orientation == Orientation.portrait
            ? 32
            : 0);

    return Scaffold(
      appBar: MediaQuery.of(context).orientation == Orientation.portrait
          ? AppBar(
              leading: const Icon(Icons.music_note),
              actions: const [
                Row(
                  children: [
                    Icon(Icons.person_outline),
                    Text('Hello, Everynyan'),
                  ],
                ),
              ],
            )
          : AppBar(),
      body: Padding(
        padding: pagePadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Tcharaammm'),
              const SizedBox(height: 32),
              YoutubeFrame(videoId: 'ODKTITUPusM'),
              const SizedBox(height: 64),
              const Text('Comentários e blá blá blá....'),
            ],
          ),
        ),
      ),
    );
  }
}
