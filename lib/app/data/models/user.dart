class User {
  final String name;
  final String dob; // Format: 'YYYY-MM-DD'
  final String avatarUrl;
  final String question;
  final String answer;

  User({
    required this.name,
    required this.dob,
    required this.avatarUrl,
    required this.question,
    required this.answer,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      dob: json['dob'],
      avatarUrl: json['avatarUrl'],
      question: json['question'],
      answer: json['answer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'dob': dob,
      'avatarUrl': avatarUrl,
      'question': question,
      'answer': answer,
    };
  }
}
