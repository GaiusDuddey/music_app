import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/audio_info8.dart';
import 'package:music_app/utils/utils.dart';

class Boys extends StatefulWidget {
  const Boys({super.key});

  @override
  State<Boys> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Boys> {
  bool isPlaying = false;
  late final AudioPlayer player;
  late final AssetSource path;
  Duration _duration = const Duration();
  Duration _position = const Duration();

  @override
  void initState() {
    initPlayer();
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future initPlayer() async {
    player = AudioPlayer();
    path = AssetSource('audio/Boys.mp3');
    // set a callback for chaning duration
    player.onDurationChanged.listen((Duration d) {
      setState(() => _duration = d);
    });
// set a callback for postion change
    player.onPositionChanged.listen((Duration p) {
      setState(() => _position = p);
    });

// set a callback for when audio ends
    player.onPlayerComplete.listen((_) {
      setState(() => _position = _duration);
    });
  }

  void playPause() async {
    if (isPlaying) {
      player.pause();
      isPlaying = false;
    } else {
      player.play(path);
      isPlaying = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Cosmic.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("")),
            const AudioInfo8(),
            const SizedBox(height: 50),
            Slider(
              value: _position.inSeconds.toDouble(),
              onChanged: (value) async {
                await player.seek(Duration(seconds: value.toInt()));
                setState(() {});
              },
              min: 0,
              max: _duration.inSeconds.toDouble(),
              inactiveColor: Colors.grey,
              activeColor: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(_duration.format()),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    player.seek(Duration(seconds: _position.inSeconds - 10));
                    setState(() {});
                  },
                  child: Image.asset(
                    'assets/icons/rewind.png',
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: playPause,
                  child: Icon(
                    isPlaying ? Icons.pause_circle : Icons.play_circle,
                    color: Colors.black,
                    size: 60,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    player.seek(Duration(seconds: _position.inSeconds + 10));
                    setState(() {});
                  },
                  child: Image.asset(
                    'assets/icons/forward.png',
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
