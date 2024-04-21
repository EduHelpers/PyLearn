class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
    "Sasha loh?",
    "options": ['da', 'da', 'da', 'net'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Petrov timur",
    "options": ['cool', 'super', 'good', 'nice'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "Mark for kursach?",
    "options": ['1', '2', '3', '4'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "sacai krutoi?",
    "options": ['net', 'net', 'net', '52'],
    "answer_index": 3,
  },
];