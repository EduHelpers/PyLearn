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

Map<String, int> emails = {"makar@mail.ru": 16, '234@yandex.ru': 23};

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
  "Числовые типы \nданных": [
    Question(
      id: 1,
      question: "В каких переменных будет лежать вещественное число?"
          "num1 = 256 / 3\n"
          "num2 = 256 / 2\n"
          "num3 = 256 / 256.0",
      options: ['Ни в одной', 'num1 и num3', 'num2 и num3', 'Во всех'],
      answer: 3,
    ),
    Question(
      id: 2,
      question: "Верно ли, что в переменной num лежит целое число?"
          "num = 1.0",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 3,
      question:
          "Какие числа будут выведены на экран в результате выполнения следующего кода?"
          "print(int(-2.95))\n"
          "print(int(1.98))",
      options: ['-3 и 1', '-3 и 2', '-2 и 1', '-2 и 2'],
      answer: 3,
    ),
    Question(
      id: 4,
      question:
          "Выберите вариант ответа, где программа выдаст ошибку и не выведет число -28",
      options: [
        'print(42 / -(1.5))',
        'print(-42 / 1.5)',
        'print(-(42 / 1,5))',
        'print(42 / (-1.5))'
      ],
      answer: 2,
    ),
    Question(
        id: 5,
        question: "Выдаст ли следующий код ошибку?"
            "num = float('1,2345')",
        options: [
          'Да, так как аргумент функции не является числом с точки зрения Python',
          'Нет, строка удовлетворяет правилам записи вещественных чисел'
        ],
        answer: 0),
  ],
//--------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------
  "Строковый тип \nданных": [
    Question(
      id: 1,
      question:
          "Верно ли, что в Python строковые данные можно обрамлять только в одинарные ковычки?",
      options: [
        'Да, двойные ковычки нельзя использовать!',
        'Нет, текст можно обрамлять в одинаковые ковычки любого типа!'
      ],
      answer: 1,
    ),
    Question(
      id: 2,
      question:
          "Какой тип будет иметь переменная data, после следующих входных данных:"
          "17\n"
          "data = str(input())",
      options: ['int', 'float', 'string'],
      answer: 2,
    ),
    Question(
      id: 3,
      question:
          "Какой тип будет иметь переменная data, после следующих входных данных"
          "17.5\n"
          "data = input()",
      options: ['int', 'float', 'string'],
      answer: 1,
    ),
    Question(
      id: 4,
      question:
          "Хотим сохранить в переменную строку '42', какие(ая) строки(а) кода делают(ет) это неверно "
          "num = '256'\n"
          'num = "256"\n'
          "num = str(256)\n"
          "num = 256\n"
          "num = input() #предполагатся, что пользователь ввел данные с клавиатуры",
      options: ['1 и 2', '2 и 3', '4', '3 и 4'],
      answer: 2,
    ),
    Question(
        id: 5,
        question: "Что будет выведе но на экран?"
            "s = len('123.456')\n"
            "print(s)",
        options: ['6', '7', '2', '1'],
        answer: 1),
    Question(
        id: 6,
        question: "Расставьте действия в правильном порядке:"
            "На экран выведется текст: 'Введите свое имя'\n"
            "Вывод на экран целого числа\n"
            "Нажатие клавише enter\n"
            "Вычисления количества символов в имени\n"
            "Пользователь вводит имя\n"
            "Если код программы следующий:\n"
            "s = len(input('Введите свое имя'))\n"
            "print(s)",
        options: ['1-2-5-3-4', '3-1-5-4-2', '1-5-3-4-2'],
        answer: 2),
  ],
//--------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------
  "Целочисленная \nарифметика": [
    Question(
      id: 1,
      question: "Что будет лежать в переменной num3?\n"
          "num1 = 33\n"
          "num2 = 12\n"
          "num3 = 10 - num1 + num2",
      options: ['10', '45', '-11', '-35'],
      answer: 2,
    ),
    Question(
      id: 2,
      question: "Что появится на экране после выполнения следующей программы?"
          "a = 4\n"
          "print(a, 'a')",
      options: ['aa', 'a a', "4 '4'", '4 a'],
      answer: 3,
    ),
    Question(
      id: 3,
      question:
          "Укажите значение переменной x после выполнения следующего кода:"
          "x = 3\n"
          "y = 4\n"
          "z = x + y\n"
          "z += 1\n"
          "x = y\n"
          "y = 5\n"
          "x = z + y + 7",
      options: ['3', '12', '13', '20'],
      answer: 1,
    ),
    Question(
      id: 4,
      question:
          "Укажите значение переменной s после выполнения следующего кода:"
          "s = 0\n"
          "k = 30\n"
          "d = k - 5\n"
          "k = 2 * d\n"
          "s = k - 100",
      options: ['-70', '0', '-50', '-20'],
      answer: 2,
    ),
    Question(
        id: 5,
        question: "Что будет выведено на экран?"
            "print((3700 // 100) % 10)",
        options: ['6', '7', '2', '1'],
        answer: 1),
    Question(
        id: 6,
        question: "Вычислите результаты целочисленных делений:"
            "23 // 7 = ?\n"
            "20 // 5 = ?\n"
            "2 // 5 = ?\n"
            "123 // 10 = ?\n"
            "-123 // 10 = ?",
        options: ['3; 4; 0; 12; 12', '4; 4; 1; 13; -13', '3; 4; 0; 12; -13'],
        answer: 2),
    Question(
        id: 7,
        question: "Вычислите результаты делений с остатком:"
            "23 % 7 = ?\n"
            "20 % 5 = ?\n"
            "2 % 5 = ?\n"
            "123 % 10 = ?\n"
            "-123 % 10 = ?",
        options: ['2; 0; 2; 3; 7', '2; 0; 2; 3; -7', '-5; 0; -3; -7; -3'],
        answer: 0),
    Question(
        id: 8,
        question:
            "Что будет выведено на экран в результате выполнения следующей программы?"
            "a = 15 // (16 % 7)\n"
            "b = 34 % a * 5 - 29 % 5 * 2\n"
            "print(a + b)",
        options: ['30', '29', '45', '12'],
        answer: 1),
    Question(
        id: 9,
        question:
            " Что будет выведено на экран в результате выполнения следующей программы?"
            "a = 82 // 3 ** 2 % 7\n"
            "print(a)",
        options: ['2', '7', '82', '5'],
        answer: 0),
  ],
//--------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------
  "Вещественная \nарифметика": [
    Question(
      id: 1,
      question: "Что будет лежать в переменной num3\n"
          "num3 = 10.5\n"
          "num3 += num3 * 2",
      options: ['10.5', '31.5', '21', '42'],
      answer: 1,
    ),
    Question(
      id: 2,
      question: "Что появится на экране после выполнения следующей программы?"
          "a = 1.5\n"
          "a = a * 1.5\n"
          "print(a, 'a')",
      options: ['aa', 'a a', "4 '2.25'", '2.25 a'],
      answer: 3,
    ),
    Question(
      id: 3,
      question:
          "Укажите значение переменной x после выполнения следующего кода:"
          "x = 1.75\n"
          "y = 3.25\n"
          "z = x + y\n"
          "z += 1.25\n"
          "x = y\n"
          "y = 3.75\n"
          "x = z + y + 0.33",
      options: ['23.66', '55', '10.33', '0.33'],
      answer: 2,
    ),
    Question(
      id: 4,
      question:
          "Укажите значение переменной s после выполнения следующего кода:"
          "s = 1.99\n"
          "s += s + 0.01",
      options: ['2', '3.99', '3.98', '4'],
      answer: 1,
    ),
    Question(
        id: 5,
        question:
            "Что будет выведено на экран в результате выполнения следующей программы?"
            "a = 6 / 1.5\n"
            "b = 3.33 / 3\n"
            "a = a ** 2\n"
            "print(a - b)",
        options: ['14.89', '6.89', '3.5', '4'],
        answer: 0),
  ],
//--------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------
  "Модуль math": [
    Question(
      id: 1,
      question:
          "Какой способ импортирования модуля math неверный, если мы хотим округлить число вниз?",
      options: [
        'import math',
        'from math import *',
        'from math import floor',
        'import math floor'
      ],
      answer: 3,
    ),
    Question(
      id: 2,
      question:
          "Верно ли, что с помощью модуля math, у вас есть доступ к обширному функционалу для проведения вычислений с числами",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 3,
      question:
          "Какая функция из модуля math отвечает за вычисление квадратного корня из числа?",
      options: ['floor', 'ceil', 'sqrt', 'abs'],
      answer: 2,
    ),
    Question(
      id: 4,
      question:
          "Что будет выведено на экран в результате выполнения следующей программы:"
          "from math import *\n"
          "a = ceil(0.01) - 3\n"
          "print(abs(a))",
      options: ['-2', '2', '-3', '4'],
      answer: 1,
    ),
    Question(
        id: 5,
        question:
            "В каком случае импортирования math, нельзя не писать math. перед вызовом функции sqrt()?",
        options: [
          'import math',
          'from math import sqrt',
          'from math import *',
          'from math import sqrt, abs'
        ],
        answer: 0),
  ],
//--------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------
  "Строковая \nарифметика": [
    Question(
      id: 1,
      question:
          "Что будет выведено на экран в результате выполнения следующего кода:"
          "str1 = 'Python'"
          "str2 = 'I'"
          "str3 = 'Love'"
          "print(str2 + str3 + str1, sep=' ', end='!')",
      options: [
        'I Love Python !',
        'I Love Python!',
        'ILovePython !',
        'ILovePython!'
      ],
      answer: 3,
    ),
    Question(
      id: 2,
      question:
          "Что будет выведено на экран в результате выполнения следующего кода:"
          "s1 = 'I am' "
          "print(s1 + ' only', 42) ",
      options: ['I amonly42', 'I amonly 42', 'I am only 42', 'I am only42'],
      answer: 2,
    ),
    Question(
      id: 3,
      question:
          "Что будет храниться в переменой str3 в конце выполнения программы?"
          "str1 = 'abc'\n"
          "str2 = 'def'\n"
          "str3 = str1 + str2\n"
          "str3 += **\n"
          "str1 = str2 + str3\n"
          "str3 += str1",
      options: [
        'defabcdef**',
        'abcdef',
        'abcdef**abcdef',
        'abcdef**defabcdef**'
      ],
      answer: 3,
    ),
    Question(
      id: 4,
      question:
          "Что будет выведено на экран в результате выполнения следующей программы:"
          "from math import *\n"
          "a = ceil(0.01) - 3\n"
          "print(abs(a))",
      options: ['-2', '2', '-3', '4'],
      answer: 1,
    ),
    Question(
        id: 5,
        question:
            "В каком случае импортирования math, нельзя не писать math. перед вызовом функции sqrt()?",
        options: [
          'import math',
          'from math import sqrt',
          'from math import *',
          'from math import sqrt, abs'
        ],
        answer: 0),
  ],
//--------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------
  "Random": [
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
  ]
};
