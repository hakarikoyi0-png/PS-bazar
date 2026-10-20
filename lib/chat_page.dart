import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget{const ChatPage({super.key});@override State<ChatPage> createState()=>_ChatPageState();}
class _ChatPageState extends State<ChatPage>{
final _c=TextEditingController();
final _m=[{"t":"بەخێربێی بۆ PS Bazar VIP! 🌟","me":false}];
void _send(){if(_c.text.trim().isEmpty)return;setState((){_m.add({"t":_c.text,"me":true});_m.add({"t":"سوپاس! نامەکەت گەیشت ✅ VIP","me":false});});_c.clear();}
@override Widget build(BuildContext context){return Scaffold(appBar:AppBar(title:const Text('PS Bazar VIP 💬'),backgroundColor:Colors.deepPurple,foregroundColor:Colors.white),body:Column(children:[Expanded(child:ListView.builder(padding:const EdgeInsets.all(16),itemCount:_m.length,itemBuilder:(c,i){final m=_m[i];return Align(alignment:m["me"]?Alignment.centerRight:Alignment.centerLeft,child:Container(margin:const EdgeInsets.symmetric(vertical:4),padding:const EdgeInsets.all(12),decoration:BoxDecoration(color:m["me"]?Colors.deepPurple:Colors.grey[200],borderRadius:BorderRadius.circular(12)),child:Text(m["t"],style:TextStyle(color:m["me"]?Colors.white:Colors.black))));})),Padding(padding:const EdgeInsets.all(8),child:Row(children:[Expanded(child:TextField(controller:_c,decoration:const InputDecoration(hintText:'نامەکەت بنووسە...',border:OutlineInputBorder()),onSubmitted:(_)=>_send())),IconButton(icon:const Icon(Icons.send,color:Colors.deepPurple),onPressed:_send)]))])) ;}}

