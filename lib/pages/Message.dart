class Messages {
  final Role role;
  final String content;

  Messages({required this.role, required this.content});

  Map<String, dynamic> toJson() {
    return {
      'role': role.toString().split('.').last,
      'content': content,
    };
  }
}

enum Role {
  user,
  assistant,
}
