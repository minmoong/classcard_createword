import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gitpod_flutter_quickstart/src/provider/createword.dart';

Future<void> main() async {
  runApp(const MyApp());
  final recognizedTextList = [
    "petition",
    "O",
    "tragedy",
    "prejudice",
    "flaw",
    "Crisis",
    "exclusive",
    "evacuate",
    "apparent",
    "",
    "on Strike",
    "have struggled",
    "with",
    "bragged akont",
    "Contestant",
    "help onself to",
    "habitat",
    "medication",
    "instruction",
    "legislation",
    "Stubborn",
    "Conducting",
    "accumulate",
    "immune",
    "of ones choice",
    "resign",
    "beat around",
    "the bush",
    "tution fees",
    "from within",
    "appoint",
    "Massike",
    "o Squeeze",
    "erupt",
    "dozente",
    "emissions",
    "time off",
    "Specimens",
    "exhaust",
    "O",
    "real estate",
    "patents",
    "O",
    "unsettled",
    "regulute",
    "correction",
    "deforestation",
    "recession",
    "know A by heart",
    "Pop quizzes",
  ];

  /* 
   * Dio가 response header의 content-type이 text/html이면
   * response.data를 jsonDecode하지 않기 때문에
   * Interceptor를 추가하여 jsonDecode작업을 수동으로 진행한다.
   */
  Dio dio = Dio()
    ..interceptors.add(InterceptorsWrapper(
      onResponse: (res, handler) {
        res.data = jsonDecode(res.data);
        handler.next(res);
      },
    ));
  CreateWord createWord = CreateWord(dio);

  Map<String, dynamic> savesetParams = {
    'set_idx': -1,
    'user_idx': 2735524,
    'login_user_idx': 2735524,
    'set_type': 1,
    'front_lang': 'en',
    'back_lang': 'ko',
    'open_yn': 0,
    'allow_edit_yn': 0,
    'footer_yn': 0,
    'footer_text': '',
    'bg_path': '/images/pattern01.jpg',
    'map_type': 1,
    'map_box_color': '',
    'map_img_path': '',
    'card_cnt': 3, // can change
    'is_copy': 0,
    'copy_from_set_idx': -1,
    'dir_idx': 0,
    'is_battle_page': 0,
    'from': '',
    'video_url': '',
    'video_start': 0,
    'video_end': 0,
    'caption': '',
    'caption_type': '',
    'ptn_idx': 0,
    'tsl': -1,
    'ts': -1,
    'name': 'rest2', // can change
    'set_url': '',
  };
  final savesetRes = await createWord.saveSet(savesetParams);

  Map<String, dynamic> savecard2Params = {
    "set_idx": savesetRes.msg,
    "user_idx": "2735524",
    "login_user_idx": "2735524",
    "set_type": "1",
    "footer_yn": "0",
    "front_lang": "en",
    "img_path": ["", "", ""],
    "audio_path": [
      "/uploads2/audio/u/az/en/20221213/12de3a4dab98ef8a7d67aace8150b540.mp3",
      "/uploads2/audio/u/az/en/20221024/b5eda0a74558a342cf659187f06f746f.mp3",
      "/uploads2/audio/u/az/en/20221114/13b5bfe96f3e2fe411c9f66f4a582adf.mp3"
    ],
    "card_idx": ["-1", "-1", "-1"],
    "map_bubble_type": ["", "", ""],
    "deleted": ["0", "0", "0"],
    "card_order": ["1", "2", "3"],
    "upload_idx": ["-1", "-1", "-1"],
    "image_type": ["-1", "-1", "-1"],
    "external_url": ["", "", ""],
    "img_idx": ["-1", "-1", "-1"],
    "es_idx": ["-1", "-1", "-1"],
    "front": ["come", "get", "in"],
    "back": ["온다", "[동] 받다,얻다,가져오다", "[전] (장소) ~에서,(시간) ~에,(방법) ~으로"],
    "example": ["", "", ""]
  };
  final savecard2Res = await createWord.saveCard2(jsonEncode(savecard2Params));

  print(savecard2Res.toJson());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
