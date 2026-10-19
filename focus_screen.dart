import 'dart:async'; import 'package:flutter/material.dart'; import '../../core/app_state.dart';
class FocusScreen extends StatefulWidget{final AppState state;const FocusScreen({super.key,required this.state});@override State<FocusScreen> createState()=>_FocusScreenState();}
class _FocusScreenState extends State<FocusScreen>{Timer?timer;int seconds=1500;bool running=false;
 void setMin(int m){timer?.cancel();setState((){seconds=m*60;running=false;});} void toggle(){if(running){timer?.cancel();setState(()=>running=false);return;} timer=Timer.periodic(const Duration(seconds:1),(_){if(seconds<=1){timer?.cancel();setState((){seconds=0;running=false;});}else{setState(()=>seconds--);}});setState(()=>running=true);}
 @override void dispose(){timer?.cancel();super.dispose();}
 @override Widget build(BuildContext c){final m=seconds~/60,s=seconds%60;return Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Text('$m:${s.toString().padLeft(2,'0')}',style:Theme.of(c).textTheme.displayLarge),Wrap(spacing:8,children:[for(final n in[25,50,90])OutlinedButton(onPressed:()=>setMin(n),child:Text('$n min'))]),const SizedBox(height:20),FilledButton.icon(onPressed:toggle,icon:Icon(running?Icons.pause:Icons.play_arrow),label:Text(running?'Pause':'Start'))]));}
}
