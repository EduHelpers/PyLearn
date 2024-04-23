class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

final Map<String, List<Question>> sample_data = {
  "Ввод и вывод \nданных": [
    Question(
      id: 1,
      question: "Sasha lohhhabobahh?",
      options: ['da', 'da', 'da', 'net'],
      answer: 3,
    ),

    // {
    //   "id": 2,
    //   "question": "Petrov timur",
    //   "options": ['cool', 'super', 'good', 'nice'],
    //   "answer_index": 1,
    // },
    // {
    //   "id": 3,
    //   "question": "Mark for kursach?",
    //   "options": ['1', '2', '3', '4'],
    //   "answer_index": 3,
    // },
    // {
    //   "id": 4,
    //   "question": "sacai krutoi?",
    //   "options": ['net', 'net', 'net', '52'],
    //   "answer_index": 3,
    // },
  ],
  "Random": [
    Question(
      id: 1,
      question: "1 * inf",
      options: ['inf', '+inf', 'print(ya dolbaeb)', '1'],
      answer: 3,
    ),
    Question(
      id: 2,
      question: "2 * inf",
      options: ['inf', '+inf', 'print(ya dolbaeb)', '2'],
      answer: 3,
    ),
    Question(
      id: 3,
      question: "3 * inf",
      options: ['inf', '+inf', 'print(ya dolbaeb)', '3'],
      answer: 3,
    ),
    Question(
      id: 4,
      question: "4 * inf",
      options: ['inf', '+inf', 'print(ya dolbaeb)', '4'],
      answer: 4,
    ),
    Question(
      id: 5,
      question: "5 * inf",
      options: ['inf', '+inf', 'print(ya dolbaeb)', '5'],
      answer: 5,
    ),
  ]
};
