class Task {
  final int id;
  final String title;
  final String description;
  final DateTime createdAt;
  final DateTime? dueDate;
  final bool isDone;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    this.dueDate,
    this.isDone = false,
  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    createdAt: DateTime.parse(json['created_at']),
    dueDate: json['due_date'] != null ? DateTime.parse(json['due_date']) : null,
    isDone: json['is_done'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'created_at': createdAt.toIso8601String(),
    'due_date': dueDate?.toIso8601String(),
    'is_done': isDone,
  };
}
