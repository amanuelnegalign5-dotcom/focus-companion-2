enum Priority { low, medium, high }
class Note {
  final String id; String title; String body; bool favorite;
  Note({required this.id, required this.title, required this.body, this.favorite=false});
  Map<String,dynamic> toJson()=>{'id':id,'title':title,'body':body,'favorite':favorite};
  factory Note.fromJson(Map<String,dynamic> j)=>Note(id:j['id'],title:j['title']??'',body:j['body']??'',favorite:j['favorite']??false);
}
class Task {
  final String id; String title; Priority priority; bool completed;
  Task({required this.id,required this.title,this.priority=Priority.medium,this.completed=false});
  Map<String,dynamic> toJson()=>{'id':id,'title':title,'priority':priority.name,'completed':completed};
  factory Task.fromJson(Map<String,dynamic> j)=>Task(id:j['id'],title:j['title']??'',priority:Priority.values.firstWhere((e)=>e.name==j['priority'],orElse:()=>Priority.medium),completed:j['completed']??false);
}
class LibraryItem {
  final String id,name,path,kind; final int size; final DateTime importedAt;
  LibraryItem({required this.id,required this.name,required this.path,required this.kind,required this.size,DateTime? importedAt}):importedAt=importedAt??DateTime.now();
  Map<String,dynamic> toJson()=>{'id':id,'name':name,'path':path,'kind':kind,'size':size,'importedAt':importedAt.toIso8601String()};
  factory LibraryItem.fromJson(Map<String,dynamic> j)=>LibraryItem(id:j['id'],name:j['name']??'',path:j['path']??'',kind:j['kind']??'file',size:j['size']??0,importedAt:DateTime.tryParse(j['importedAt']??''));
}
