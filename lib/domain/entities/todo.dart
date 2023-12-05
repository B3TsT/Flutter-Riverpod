class Todo {
  Todo({
    required this.id,
    required this.description,
    this.completedAt,
  });
  final String id;
  final String description;
  final DateTime? completedAt;

  bool get done => completedAt != null;

  Todo copyWith({
    String? description,
    DateTime? completedAt,
  }) => Todo(
        id: id,
        description: description ?? this.description,
        completedAt: completedAt,
      );
}
