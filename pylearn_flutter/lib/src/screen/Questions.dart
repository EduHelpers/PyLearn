// ignore_for_file: file_names

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

// ignore: non_constant_identifier_names
final Map<String, List<Question>> sample_data = {
  "Ввод и вывод \nданных": [
    Question(
      id: 1,
      question: "Что выведет программа?"
          "print('42', 'это', end=\" \")\nprint('большое число')",
      options: [
        '42этобольшоечисло',
        '42 это большое число',
        '42этобольшое число',
        '42 это маленькое число'
      ],
      answer: 1,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?"
          "print(42, '43', '44')",
      options: ['42 4344', '42, 43, 44', '42 43 44', '42\"43\"\'44\''],
      answer: 2,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?"
          "print('zxc', sep='\$')",
      options: ['zxc', 'zxc\$', 'z\$x\$c', 'z\$x\$c\$'],
      answer: 0,
    ),
    Question(
      id: 4,
      question: "Что выведет программа?"
          "print('ab', 'c', 'def', 'g', sep='#')",
      options: ['ab c def g', 'ab#c#def#g', 'abcdefg#', 'abc\$defg'],
      answer: 1,
    ),
    Question(
      id: 5,
      question: "Что выведет программа?"
          'print("aac", end="!!")',
      options: ['aac!!', 'a!!a!!c', 'aac', 'a a c'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "Что выведет программа?"
          'print(input(), input(), "4")\n'
          'Input:\n'
          '12\n'
          '3',
      options: ['1234', '3124', '1 2 3 4', '12 3 4'],
      answer: 3,
    ),
    Question(
      id: 7,
      question: "Сколько букв 'b' будет выведено?\n"
          'print("ab", "bac", sep="b", end="b")',
      options: ['2', '7', '4', '1'],
      answer: 2,
    ),
    Question(
      id: 8,
      question: "print(42) и print('42') выведут разные значения",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 9,
      question: "print('a') и print('a', sep='a') выведут разные значения",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 10,
      question:
          "print('мама') и print('мама', end='!') выведут разные значения",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 11,
      question: 'print(abcde) выведет abcde на экран',
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 12,
      question: 'print(42) выведет 42',
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 13,
      question: 'print(ab27) вызовет ошибку',
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 14,
      question: 'print(input()) вызовет ошибку',
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 15,
      question: "Какая из следующих строк вызовет ошибку?",
      options: [
        'print("a", "ab", end="abc")',
        'print("a", "b", "c", sep="")',
        'print("my name is ", input)',
        'print()'
      ],
      answer: 2,
    ),
    Question(
      id: 16,
      question: "Какая из следующих строк вызовет ошибку?",
      options: [
        'print(aboba, end=" ")',
        'print(input(), input())',
        'print("sddqd", "is nice")',
        'print()'
      ],
      answer: 0,
    ),
    Question(
      id: 17,
      question: "Какая из следующих строк вызовет ошибку?",
      options: [
        'print(end="s")',
        'print input()',
        'print("42 is super")',
        'print(input())'
      ],
      answer: 1,
    ),
    Question(
      id: 18,
      question: "Какая из следующих строк вызовет ошибку?",
      options: [
        'print("input()")',
        'print(41)',
        'print(23savage)',
        'print("goo")'
      ],
      answer: 2,
    ),
    Question(
      id: 19,
      question: "Какая из следующих строк вызовет ошибку?",
      options: [
        'print("s")',
        'print(0)',
        'print(end="f")',
        'print("a", "b", "c", sep=42)'
      ],
      answer: 3,
    ),
    Question(
      id: 20,
      question: "Какая из следующих строк вызовет ошибку?",
      options: [
        'print("one", "two", sep, \nend="!")',
        'print("a", "b", "c", sep="")',
        'print("my name is ", input())',
        'print()'
      ],
      answer: 0,
    ),
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
