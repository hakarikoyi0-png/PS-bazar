import 'package:flutter/material.dart';
import 'chat_page.dart';
void main(){runApp(const PSBazarApp());}
class PSBazarApp extends StatelessWidget{
const PSBazarApp({super.key});
@override Widget build(BuildContext c){
return MaterialApp(title:'PS Bazar VIP',debugShowCheckedModeBanner:false,theme:ThemeData(primarySwatch:Colors.deepPurple,useMaterial3:true),home:const ChatPage());}}

