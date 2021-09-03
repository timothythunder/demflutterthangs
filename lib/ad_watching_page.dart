// https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqay05T0UteTdHcmFpcjhCTlpyZGg5WGhxMGUtUXxBQ3Jtc0trZjdmdzFWUXJ2emloR2twc05oSENsVDJqLXhKZE9neFZrSHFYWUZWVmV5am1GNDdiUlVlaUx2ZWtCWE00TjYyN3ZZOFc1Zmt4MGRBOUlCaFhLVFU2N25jZU5wU0ltWk4yRjZubl9ZNlRkRTVyaXdaUQ&q=https%3A%2F%2Fyou-link.herokuapp.com%2F%3Furl%3D
// this lets you get the right link for youtube videos.

import 'package:flutter/cupertino.dart';
import 'package:i_hope_i_can_change_this_name/reusable_ad.dart';
import 'package:i_hope_i_can_change_this_name/reusable_products.dart';

import 'main_page.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// this will have a fullscreen of the ad and slide into next vid but right now just testing out how to use videos.

class AdWatchingPage extends StatefulWidget {
  @override
  _AdWatchingPageState createState() => _AdWatchingPageState();
}

class _AdWatchingPageState extends State<AdWatchingPage> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: globalAdUrl, // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          globalAdName,
          style: TextStyle(fontSize: 25),
        ),
        toolbarHeight: 50,
        backgroundColor: Color.fromRGBO(8, 80, 77, 1),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                      color: Color.fromRGBO(8, 80, 77, 1), width: 3.0),
                ),
              ),
              margin: const EdgeInsets.only(top: 140.0),
              height: 80,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      right: 10.0,
                    ),
                    // this will essentially change image size
                    child: Image.network(globalAdImage),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          globalAdName,
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromRGBO(8, 80, 77, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      '\$ $globalProductPrice',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromRGBO(8, 80, 77, 1),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  // might need to add a late modifier.
//   VideoPlayerController _controller;

//@override
//void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(globalAdUrl)
//       ..initialize().then((_) {
//         // this just makes the video keep repeating.
//         _controller.setLooping(true);
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//   }

// GestureDetector(
//               onTap: () {
//                 setState(() {
//                   _controller.value.isPlaying
//                       ? _controller.pause()
//                       : _controller.play();
//                 });
//               },
//               child: Center(
//                 child: _controller.value.isInitialized
//                     ? AspectRatio(
//                         aspectRatio: _controller.value.aspectRatio,
//                         child: VideoPlayer(_controller),
//                       )
//                     : Container(),
//               ),
//             ),

//  @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
