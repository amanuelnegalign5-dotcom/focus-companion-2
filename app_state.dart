import 'dart:convert';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models.dart';
class AppState extends ChangeNotifier {
  final notes=<Note>[]; final tasks=<Task>[]; final library=<LibraryItem>[]; bool loaded=false; bool english=false; String query='';
  Future<void> load() async { final p=await SharedPreferences.getInstance(); english=p.getBool('english')??false;
    final a=p.getString('notes'),b=p.getString('tasks'),c=p.getString('library');
    if(a!=null)notes.addAll((jsonDecode(a) as List).map((e)=>Note.fromJson(Map<String,dynamic>.from(e))));
    if(b!=null)tasks.addAll((jsonDecode(b) as List).map((e)=>Task.fromJson(Map<String,dynamic>.from(e))));
    if(c!=null)library.addAll((jsonDecode(c) as List).map((e)=>LibraryItem.fromJson(Map<String,dynamic>.from(e)))); loaded=true; notifyListeners(); }
  Future<void> persist() async { final p=await SharedPreferences.getInstance(); await p.setBool('english',english); await p.setString('notes',jsonEncode(notes.map((e)=>e.toJson()).toList())); await p.setString('tasks',jsonEncode(tasks.map((e)=>e.toJson()).toList())); await p.setString('library',jsonEncode(library.map((e)=>e.toJson()).toList())); }
  void toggleLanguage(){english=!english; persist(); notifyListeners();}
  void addNote(String t,String b){notes.insert(0,Note(id:_id(),title:t,body:b));persist();notifyListeners();}
  void addTask(String t,Priority p){tasks.insert(0,Task(id:_id(),title:t,priority:p));persist();notifyListeners();}
  void toggleTask(Task t){t.completed=!t.completed;persist();notifyListeners();}
  void addLibraryItem(LibraryItem i){library.insert(0,i);persist();notifyListeners();}
  List<Note> get filteredNotes {final q=query.trim().toLowerCase(); if(q.isEmpty)return notes; return notes.where((n)=>n.title.toLowerCase().contains(q)||n.body.toLowerCase().contains(q)).toList();}
  String _id()=> '${DateTime.now().microsecondsSinceEpoch}${Random().nextInt(999)}';
}
