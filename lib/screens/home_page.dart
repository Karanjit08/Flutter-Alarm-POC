import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isOn = false;
  int alarmId = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALARM MANAGER'),
      ),
      body: Center(
        child: Transform.scale(
          scale: 2,
          child: Switch(
            value: isOn,
            onChanged: (bool value) {
              setState(() {
                isOn = value;
              });

              if(isOn == true){
                AndroidAlarmManager.periodic(Duration(seconds: 60),1, fireAlarm);
              }
              else{
                AndroidAlarmManager.cancel(alarmId);
              }
            },


          ),
        ),
      )
    );
  }
}


void fireAlarm(){
  print('RUNNING ALARM at ${DateTime.now()}');
  FlutterRingtonePlayer.play(fromAsset: "assets/audio/audio_android.mp3");
}
