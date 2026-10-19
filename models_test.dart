import 'package:flutter_test/flutter_test.dart';
import 'package:focus_companion_2/core/models.dart';
void main(){test('note round trip',(){final n=Note(id:'1',title:'Test',body:'Body');final c=Note.fromJson(n.toJson());expect(c.title,'Test');expect(c.body,'Body');});test('task round trip',(){final t=Task(id:'1',title:'Task',priority:Priority.high);final c=Task.fromJson(t.toJson());expect(c.priority,Priority.high);});}
