import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

// class Home extends StatefulWidget{
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   FlutterTts ftts = FlutterTts();
//   TextEditingController ontroller = TextEditingController();
// String text='';
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//         appBar: AppBar(
//           title: const Text("Text to Speech in Flutter"),
//           backgroundColor: Colors.redAccent,
//         ),
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.all(20),
//             alignment: Alignment.center,
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: ontroller,
//                   decoration: InputDecoration(
//                     fillColor: Colors.white,
//                     filled: true,
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.green,width: 2),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.greenAccent,width: 2),
//                     ),
//                   ).copyWith(
//                       hintText: "Type in a text to be voiced."),
//                   onChanged: (val) {
//                     setState(() {
//                       text = val;
//                     });
//                   },
//                 ),
//                 ElevatedButton(
//                     onPressed:() async {
//
//                       //your custom configuration
//                       await ftts.setLanguage("en-US");
//                       await ftts.setSpeechRate(0.5); //speed of speech
//                       await ftts.setVolume(10.0); //volume of speech
//                       await ftts.setPitch(1); //pitc of sound
//
//                       //play text to sp
//                       var result = await ftts.speak(text);
//                       if(result == 1){
//                         //speaking
//                       }else{
//                         //not speaking
//                       }
//                     },
//                     child: const Text("Text to Speech"))
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }