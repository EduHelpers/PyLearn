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

final List<String> topics = [
  "Ввод и вывод \nданных",
  "Числовые типы \nданных",
  "Строковый тип \nданных",
  "Целочисленная \nарифметика",
  "Вещественная \nарифметика",
  "Модуль math",
  "Строковая \nарифметика",
  "Индексация и срезы",
  "Строковые методы",
  "Условные \nоператоры",
  "Вложенные условные \nоператоры",
  "Split и Join",
  "Цикл for",
  "Цикл while",
  "Операторы break \nи continue",
  "Вложенные циклы",
  "Списки",
  "Словари",
  "Функции \nбез параметров",
  "Функции \nс параметрами",
  "Глобальные \nи локальные\nпеременные",
  "Функции \nс возвратом \nзначения",
  "Пользовательские \nфункции \nвысшего порядка",
  "Основные функции \nвысшего порядка",
  "Работа с файлами"
];

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
      question: "Верно ли, что в переменной num лежит целое число?\n"
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
        question: "Выдаст ли следующий код ошибку?\n"
            "num = float('1,2345')",
        options: [
          'Да, так как аргумент\nфункции не является числом\nс точки зрения Python',
          'Нет, строка удовлетворяет\nправилам записи \nвещественных чисел'
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
        'Да, двойные ковычки\nнельзя использовать!',
        'Нет, текст можно\nобрамлять в одинаковые\nковычки любого типа!'
      ],
      answer: 1,
    ),
    Question(
      id: 2,
      question:
          "Какой тип будет иметь переменная data, после следующих входных данных: "
          "17\n"
          "data = str(input())",
      options: ['int', 'float', 'string'],
      answer: 2,
    ),
    Question(
      id: 3,
      question:
          "Какой тип будет иметь переменная data, после следующих входных данных: "
          "17.5\n"
          "data = input()",
      options: ['int', 'float', 'string'],
      answer: 2,
    ),
    Question(
      id: 4,
      question:
          "Хотим сохранить в переменную строку '42', какие(ая) строки(а) кода делают(ет) это неверно?"
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
        question: "Что будет выведе но на экран?\n"
            "s = len('123.456')\n"
            "print(s)",
        options: ['6', '7', '2', '1'],
        answer: 1),
    Question(
        id: 6,
        question: "Расставьте действия в правильном порядке:\n"
            "1. На экран выведется текст: 'Введите свое имя'\n"
            "2. Вывод на экран целого числа\n"
            "3. Нажатие клавише enter\n"
            "4. Вычисления количества символов в имени\n"
            "5. Пользователь вводит имя\n\n"
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
      question: "Что появится на экране после выполнения следующей программы?\n"
          "a = 4\n"
          "print(a, 'a')",
      options: ['aa', 'a a', "4 '4'", '4 a'],
      answer: 3,
    ),
    Question(
      id: 3,
      question:
          "Укажите значение переменной x после выполнения следующего кода:\n"
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
          "Укажите значение переменной s после выполнения следующего кода:\n"
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
        question: "Вычислите результаты целочисленных делений:\n"
            "23 // 7 = ?\n"
            "20 // 5 = ?\n"
            "2 // 5 = ?\n"
            "123 // 10 = ?\n"
            "-123 // 10 = ?",
        options: ['3; 4; 0; 12; 12', '4; 4; 1; 13; -13', '3; 4; 0; 12; -13'],
        answer: 2),
    Question(
        id: 7,
        question: "Вычислите результаты делений с остатком:\n"
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
            "Что будет выведено на экран в результате выполнения следующей программы?\n"
            "a = 15 // (16 % 7)\n"
            "b = 34 % a * 5 - 29 % 5 * 2\n"
            "print(a + b)",
        options: ['30', '29', '45', '12'],
        answer: 1),
    Question(
        id: 9,
        question:
            " Что будет выведено на экран в результате выполнения следующей программы?\n"
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
      question: "Что будет лежать в переменной num3?\n"
          "num3 = 10.5\n"
          "num3 += num3 * 2",
      options: ['10.5', '31.5', '21', '42'],
      answer: 1,
    ),
    Question(
      id: 2,
      question: "Что появится на экране после выполнения следующей программы?\n"
          "a = 1.5\n"
          "a = a * 1.5\n"
          "print(a, 'a')",
      options: ['aa', 'a a', "4 '2.25'", '2.25 a'],
      answer: 3,
    ),
    Question(
      id: 3,
      question:
          "Укажите значение переменной x после выполнения следующего кода:\n"
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
          "Укажите значение переменной s после выполнения следующего кода:\n"
          "s = 1.99\n"
          "s = s + 0.01",
      options: ['2', '3.99', '3.98', '4'],
      answer: 1,
    ),
    Question(
        id: 5,
        question:
            "Что будет выведено на экран в результате выполнения следующей программы?\n"
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
          "Верно ли, что с помощью модуля math, у вас есть доступ к обширному функционалу для проведения вычислений с числами?",
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
          "Что будет выведено на экран в результате выполнения следующей программы:\n"
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
          "Что будет выведено на экран в результате выполнения следующего кода?\n"
          "str1 = 'Python'\n"
          "str2 = 'I'\n"
          "str3 = 'Love'\n"
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
          "Что будет выведено на экран в результате выполнения следующего кода?\n"
          "s1 = 'I am' \n"
          "print(s1 + ' only', 42) ",
      options: ['I amonly42', 'I amonly 42', 'I am only 42', 'I am only42'],
      answer: 2,
    ),
    Question(
      id: 3,
      question:
          "Что будет храниться в переменой str3 в конце выполнения программы?\n"
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
          "Что будет выведено на экран в результате выполнения следующей программы?\n"
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
  "Индексация и срезы": [
    Question(
      id: 1,
      question:
          "Какой способ обратиться к последнему элементу строки\ns = 'abcdf' неверный?\n",
      options: ['s[4]', 's[len(s)]', 's[len(s) - 1]', 's[-1]'],
      answer: 1,
    ),
    Question(
      id: 2,
      question:
          "Что будет выведено на экран в результате выполнения следующего кода?\n"
          "s1 = 'Red'\n"
          "s2 = 'Green'\n"
          "s3 = 'Blue'\n"
          "print(s1[0] + s2[0] + s3[-4])",
      options: ['RGB', 'rgb', 'dne', 'R G B'],
      answer: 0,
    ),
    Question(
      id: 3,
      question:
          "Что будет храниться в переменой str3 в конце выполнения программы?\n"
          "str1 = 'abc'\n"
          "str2 = 'def'\n"
          "str3 = str1[2] + str2[-2] + 'o'\n"
          "str3 = '**' + str3\n"
          "str1 = str2 + str3\n"
          "str3 = str1",
      options: ['def**ceo', 'defceo**', 'defceo**ceodef', 'defceo****defceo'],
      answer: 0,
    ),
    Question(
      id: 4,
      question: "Вызовет ли данная программа ошибку?\n"
          "s1 = '123'\n"
          "print(s1[3])",
      options: [
        'Да, т.к. [3] это обращение\nк 4-му элементу строки,\nкоторых всего 3',
        'Нет, программа выведет\nпоследний символ - "3"'
      ],
      answer: 0,
    ),
    Question(
        id: 5,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'abcdefg'\n"
            "print(s[2:5])",
        options: ['abg', 'def', 'abfg', 'cde'],
        answer: 3),
    Question(
        id: 6,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'abcdefg'\n"
            "print(s[3:])",
        options: ['d', 'defg', 'abc', 'efg'],
        answer: 1),
    Question(
        id: 7,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'abcdefg'\n"
            "print(s[:3])",
        options: ['ab', 'd', 'abc', 'abcefg'],
        answer: 2),
    Question(
        id: 8,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'abcdefg'\n"
            "print(s[:])",
        options: ['abcdefg', '"Пустая строка"', 'abcdef', 'gfedcba'],
        answer: 2),
    Question(
        id: 9,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'abcdefg'\n"
            "print(s[::-3])",
        options: ['gda', 'adg', 'dcba', 'edcba'],
        answer: 0),
    Question(
        id: 10,
        question:
            "Укажите верный способ заменить на 'X' 3-ий элемент произвольной строки s длиной не менее 4 символов.\n",
        options: [
          's[2] = "X"',
          's = s[:2] + "X" + s[3:]',
          's = s[:3] + "X" + s[3:]',
          's = s[:3] + "X" + s[4:]'
        ],
        answer: 3),
  ],
  "Строковые методы": [
    Question(
      id: 1,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "s = 'iLearnPythonlanguage'\n"
          "print(s.capitalize())",
      options: [
        'ILearnPythonLanguage',
        'ILEARNPYTHONLANGUAGE',
        'ilearnpythonlanguage',
        'Ilearnpythonlanguage'
      ],
      answer: 3,
    ),
    Question(
      id: 2,
      question:
          "Что будет храниться в переменой str3 в конце выполнения программы?\n"
          "s1 = 'a'\n"
          "s2 = s1.upper()\n"
          "print(s1, s2)",
      options: ['a A', 'a a', 'A a', 'A A'],
      answer: 0,
    ),
    Question(
      id: 3,
      question: "Вызовет ли данная программа ошибку:\n"
          "s = 'i LEARN Python'\n"
          "print(s.swapcase())",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
        id: 4,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'i LEARN Python LAnguaGE\n'"
            "s = s.lower()\n"
            "print(s.count('n'))",
        options: ['1', '2', '0', '3'],
        answer: 3),
    Question(
        id: 5,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'I know Python very good'\n"
            "print(s.startswith('i'), end='; ')\n"
            "print(s.startswith('I'), end='; ')\n"
            "print(s.startswith('I k'))",
        options: [
          'True; True; False',
          'False; True; True',
          'True; True; True',
          'True; False; False'
        ],
        answer: 1),
    Question(
        id: 6,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'I know Python very good'\n"
            "print(s.endswith('d '), end='; ')\n"
            "print(s.endswith('ood'), end='; ')\n"
            "print(s.endswith('I know Python very good'))",
        options: [
          'True; True; False',
          'False; True; True',
          'True; True; True',
          'True; False; False'
        ],
        answer: 1),
    Question(
        id: 7,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'eniki beniki abra cadabra'\n"
            "print(s.find('bra'), end='; ')\n"
            "print(s.rfind('bra'))",
        options: ['22; 13', '23; 14', '14; 23', '13; 22'],
        answer: 2),
    Question(
        id: 8,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'abracadabra'\n"
            "print(s.replace('ab', '!!'), end='; ')\n"
            "print(s.replace('ab', '**', 1))",
        options: [
          '!!racad!!ra; abracad**ra',
          '!!racad!!ra; **racad**ra',
          '!!racadabra; **racadabra',
          '!!racad!!ra; **racadabra'
        ],
        answer: 3),
    Question(
        id: 9,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = 'aabbAA111ccDDaa'\n"
            "print(s.isalnum(), end='; ')\n"
            "print(s.isalpha(), end='; ')\n"
            "print(s.isdigit())",
        options: [
          'True; True; False',
          'False; False; False',
          'True; True; True',
          'True; False; False'
        ],
        answer: 3),
    Question(
        id: 10,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s = '    aabb!@#\$11cc    '\n"
            "print(s.islower(), end='; ')\n"
            "print(s.isupper(), end='; ')\n"
            "print(s.isspace())",
        options: [
          'True; False; False',
          'False; True; True',
          'True; True; False',
          'False; False; True'
        ],
        answer: 0),
  ],
  "Условные \nоператоры": [
    Question(
      id: 1,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "n1 = 52\n"
          "n2 = 2 \n"
          "n1 -= n2\n"
          "n1 = str(n1 * n1)\n"
          "if n1[1] + n1[0] == '52':\n"
          "    print('Да здравствует\nСанкт-Петербург!'))",
      options: ['Ничего не выведет', 'Да здравствует\nСанкт-Петербург!'],
      answer: 1,
    ),
    Question(
      id: 2,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "s = 'i LeaRN PYTHON'\n"
          "if s.islower():\n"
          "    s += ' is lower'\n"
          "    print(s)\n"
          "else:\n"
          "    s *= s",
      options: ['Ничего не выведет', 'i LeaRN PYTHON is lower'],
      answer: 0,
    ),
    Question(
      id: 3,
      question:
          "Будет ли следующая программа работать так как задумывалось? Если да/нет, то почему?\n"
          "n = int(input())\n"
          "if n % 2 == 0:\n"
          "    print('Четное')\n"
          "else:\n"
          "print('Нечетное')",
      options: [
        'Да, т.к. соблюдены\nвсе правила Python',
        'Нет, т.к. 2-я ф-ия print()\nбудет выполняться всегда,\nт.к. перед ней нет отступа,\nа значит она не имеет\nотношения к телу\nусловия else'
      ],
      answer: 1,
    ),
    Question(
      id: 4,
      question:
          "Расположите логические операторы в порядке значимости их приоритета (от наибольшего до наименьшего). \n"
          "1. and\n"
          "2. not\n"
          "3. or",
      options: ['3-2-1', '1-2-3', '2-3-1', '2-1-3'],
      answer: 3,
    ),
    Question(
        id: 5,
        question:
            "Заполните таблицу, выбрав True или False, чтобы показать, является результатом такой комбинации истина или ложь\n"
            "True and False\n"
            "True and True\n"
            "False and True\n"
            "False and False",
        options: [
          'True; True; True; False',
          'True; True; True; True',
          'False; True; False; False',
          'True; False; True; False'
        ],
        answer: 2),
    Question(
        id: 6,
        question:
            "Заполните таблицу, выбрав True или False, чтобы показать, является результатом такой комбинации истина или ложь\n"
            "True or False\n"
            "True or True\n"
            "False or True\n"
            "False or False",
        options: [
          'True; True; True; False',
          'True; True; True; True',
          'False; True; False; False',
          'True; False; True; False'
        ],
        answer: 0),
    Question(
        id: 7,
        question:
            "Заполните таблицу, выбрав True или False, чтобы показать, является результатом такой комбинации истина или ложь\n"
            "not False\n"
            "not True",
        options: ['True; False', 'False; True', 'True; True', 'False; False'],
        answer: 0),
    Question(
        id: 8,
        question:
            "Допустим, что даны переменные a = 2, b = 4, c = 6. Заполните таблицу, выбрав True или False, чтобы показать, является результатом такой комбинации истина или ложь.\n"
            "a == 2 or b > 2\n"
            "6 <= c and a > 3\n"
            "1 != b and c != 3\n"
            "a >= -1 or a <= b\n"
            "not (a > 2)\n"
            "not (c <= 10)",
        options: [
          'Fale; False; False;\nTrue; False; True',
          'True; False; True;\nTrue; False; True',
          'True; False; True;\nTrue; True; False',
          'False; True; False;\nFalse; False; True'
        ],
        answer: 2),
  ],
  "Вложенные условные \nоператоры": [
    Question(
      id: 1,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "x = 10\n"
          "y = 20\n"
          "if x > y:\n"
          "    print('x больше y')\n"
          "else:\n"
          "    if y > x:\n"
          "        print('x меньше y')\n"
          "    else:\n"
          "        print('x равно y')",
      options: ['x больше y', 'x меньше y', 'x равно y', 'Ничего не выведет'],
      answer: 1,
    ),
    Question(
      id: 2,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "num = 15\n"
          "if num > 0:\n"
          "    print('Положительное число')\n"
          "elif num < 0:\n"
          "    print('Отрицательное число')\n"
          "else:\n"
          "    print('Ноль')",
      options: [
        'Ноль',
        'Положительное число',
        'Отрицательное число',
        'Ничего не выведет'
      ],
      answer: 1,
    ),
    Question(
      id: 3,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "score = 85\n"
          "if score >= 90:\n"
          "    print('Отлично')\n"
          "elif score >= 80:\n"
          "    print('Хорошо')\n"
          "elif score >= 70:\n"
          "    print('Удовлетворительно')\n"
          "else:\n"
          "    print('Неудовлетворительно')",
      options: [
        'Отлично',
        'Хорошо',
        'Удовлетворительно',
        'Неудовлетворительно'
      ],
      answer: 1,
    ),
    Question(
        id: 4,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "number = 3\n"
            "if number == 1:\n"
            "    print('One')\n"
            "elif number == 2:\n"
            "     print('Two')\n"
            "else:\n"
            "    if number == 3:\n"
            "        print('Three')\n"
            "    else:\n"
            "        print('Other')",
        options: ['One', 'Two', 'Three', 'Other'],
        answer: 2),
    Question(
        id: 5,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "age = 25\n"
            "if age <= 12:\n"
            "    print('Ребенок')\n"
            "elif age <= 19:\n"
            "    print('Подросток')\n"
            "elif age <= 35:\n"
            "    print('Молодой человек')\n"
            "else:\n"
            "    print('Взрослый')",
        options: ['Ребенок', 'Подросток', 'Молодой человек', 'Взрослый'],
        answer: 2),
  ],
  "Цикл for": [
    Question(
      id: 1,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "for i in range(1, 6):\n"
          "    print(i * 2, end=' ')\n",
      options: ['1 2 3 4 5 ', '2 4 6 8 10 ', '1 4 9 16 25 ', '2 3 4 5 6 '],
      answer: 1,
    ),
    Question(
      id: 2,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "for i in range(10, 0, -2):\n"
          "    print(i, end=' ')\n",
      options: [
        '2 4 6 8 10 ',
        '10 8 6 4 2 ',
        '10 9 8 7 6 5 4 3 2 1 ',
        ' 10 8 6 4 2 0 '
      ],
      answer: 1,
    ),
    Question(
      id: 3,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "total = 0\n"
          "for i in range(5):\n"
          "    total += i\n"
          "print(total)\n",
      options: ['10', '15', '4', '0'],
      answer: 0,
    ),
    Question(
      id: 4,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "word = 'Python'"
          "for i in range(len(word)):\n"
          "    print(word[i] * 3, end=' ')\n",
      options: [
        'PPP yyy ttt hhh ooo nnn ',
        'PythonPythonPython ',
        'P y t h o n ',
        'Ничего не выведет'
      ],
      answer: 0,
    ),
    Question(
        id: 5,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "for i in range(1, 10):\n"
            "    if i % 2 == 0:\n"
            "         print(i, 'четное число', end=' ')",
        options: [
          '2 четное число \n4 четное число \n6 четное число \n8 четное число ',
          '2 4 6 8 ',
          '2 4 6 8 четное число ',
          '1 3 5 7 9 '
        ],
        answer: 0),
  ],
  "Цикл while": [
    Question(
      id: 1,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "count = 0\n"
          "while count < 5:\n"
          "    print(count, end=' ')\n"
          "    count += 1",
      options: ['1 2 3 4 5 ', '0 1 2 3 4 ', ' 1 2 3 4 ', ' 0 1 2 3 4 5 '],
      answer: 1,
    ),
    Question(
      id: 2,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "num = 10\n"
          "while num > 0:\n"
          "    print(num)\n"
          "    num -= 2",
      options: [
        '10 8 6 4 2 ',
        '2 4 6 8 10 ',
        '10 9 8 7 6 5 4 3 2 1 ',
        ' 10 8 6 4 2 0 '
      ],
      answer: 0,
    ),
    Question(
      id: 3,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "s = 'ABCDefghijk'\n"
          "total = 0\n"
          "while not(s.islower()):\n"
          "    total += 1\n"
          "    s = s[total:]"
          "print(s, '-', total)\n",
      options: [
        'efghijk - 4',
        'ABCDefghijk - 11',
        'Цикл будет выполняться\nбесконечно - ОШИБКА'
      ],
      answer: 0,
    ),
    Question(
      id: 4,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "s = 'c4'\n"
          "while s != c4444:\n"
          "    print(cs:go, end=' ')\n"
          "    s += '4'",
      options: [
        'cs:go cs:go cs:go ',
        'cs:go cs:go cs:go cs:go ',
        'cs:go ',
        'Ничего не выведет'
      ],
      answer: 0,
    ),
    Question(
        id: 5,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s1 = 'ABCDefghijk\n"
            "s2 = 'c4'\n"
            "total = 0\n"
            "while s2 != c4444 or not(s1.islower()):\n"
            "     print(*, end=' ')\n"
            "     total += 1\n"
            "     s1 = s1[total:]\n"
            "     s2 += '4'",
        options: ['* * * * ', '* * * ', '* ', '* * '],
        answer: 0),
    Question(
        id: 6,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "s1 = 'ABCDefghijk\n"
            "s2 = 'c4'\n"
            "total = 0\n"
            "while s2 != c4444 and not(s1.islower()):\n"
            "     print(*, end=' ')\n"
            "     total += 1\n"
            "     s1 = s1[total:]\n"
            "     s2 += '4'",
        options: ['* * * * ', '* * * ', '* ', '* * '],
        answer: 1),
  ],
  "Операторы break \nи continue": [
    Question(
      id: 1,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "for i in range(10):"
          "    print(i, end='*')\n"
          "    if i > 6:\n"
          "        break",
      options: [
        '1*2*3*4*5*',
        '0*1*2*3*4*5*6*7*8*9*10* ',
        '0*1*2*3*4*5*6*7*',
        '*0*1*2*3*4*5*'
      ],
      answer: 2,
    ),
    Question(
      id: 2,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "i = 100\n"
          "while i > 0:\n"
          "    if i == 40:\n"
          "        break\n"
          "    print(i, end='*')\n"
          "    i -= 20",
      options: ['100*80*60*', '0*20*40*', '100*80*60*40*', '0*20*'],
      answer: 0,
    ),
    Question(
      id: 3,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "n = 10\n"
          "while n > 0:\n"
          "    n -= 1\n"
          "    if n == 2:\n"
          "        continue\n"
          "    print(n, end='*')",
      options: [
        '9*8*7*6*5*4*3*2*',
        '9*8*7*6*5*4*3*',
        '9*8*7*6*5*4*3*2*1*0*',
        '9*8*7*6*5*4*3*1*0*'
      ],
      answer: 3,
    ),
    Question(
      id: 4,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "result = 0\n"
          "for i in range(10):\n"
          "    if i % 2 == 0:\n"
          "        continue\n"
          "    result += i\n"
          "print(result)",
      options: ['Ничего не выведет', '25', '50', '52'],
      answer: 1,
    ),
    Question(
        id: 5,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "mult = 1\n"
            "for i in range(1, 11):\n"
            "    if i % 2 == 0:\n"
            "        continue\n"
            "    if i % 9 == 0:\n"
            "        break\n"
            "    mult *= i\n"
            "print(mult)",
        options: ['Ничего не выведет', '100', '105', '52'],
        answer: 2),
  ],
  "Вложенные циклы": [
    Question(
      id: 1,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "for i in range(1, 4):\n"
          "    for j in range(3, 5):\n"
          "        print(i + j, end='')\n",
      options: ['455667', '233445', 'Ничего не выведет', '766554'],
      answer: 0,
    ),
    Question(
      id: 2,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "counter = 0\n"
          "for i in range(99, 102):\n"
          "    temp = i\n"
          "    while temp > 0:\n"
          "        counter += 1\n"
          "        temp //= 10\n"
          "print(counter)",
      options: ['8', '7', '6', '5'],
      answer: 0,
    ),
    Question(
      id: 3,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "n1 = 0\n"
          "n2 = 0\n"
          "while n1 < 4:\n"
          "    n1 += 2\n"
          "while n2 < 4\n"
          "    print(n1, 'и', n2, end='; ')\n"
          "    n2 += 2",
      options: [
        '0 и 0; 0 и 2; 0 и 4; 2 и 0;\n2 и 2; 2 и 4; 4 и 0; 4 и 2;\n4 и 4; ',
        '4 и 0; 4 и 2; 4 и 4; ',
        'Ничего не выведет'
      ],
      answer: 1,
    ),
    Question(
      id: 4,
      question: "Что покажет приведенный ниже фрагмент кода?\n"
          "result = 0\n"
          "for i in range(10):\n"
          "    if i % 2 == 0:\n"
          "        continue\n"
          "    result += i\n"
          "print(result)",
      options: ['Ничего не выведет', '25', '50', '52'],
      answer: 1,
    ),
    Question(
        id: 5,
        question: "Что покажет приведенный ниже фрагмент кода?\n"
            "for i in range(1, 4):\n"
            "    for j in range(3, 0, -1):\n"
            "        print(j, end=' ')\n",
        options: [
          '1 2 3 1 2 3 1 2 3 ',
          ' 3 2 1 3 2 1 3 2 1 ',
          '1 4 9 ',
          '1 2 3 '
        ],
        answer: 1),
  ],
//--------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------
  "Списки": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "print(l[0])",
      options: ['10', '20', '30', '40'],
      answer: 0,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "print(l[2])",
      options: ['10', '20', '30', '40'],
      answer: 2,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "print(l[-1])",
      options: ['10', '20', '30', '40'],
      answer: 2,
    ),
    Question(
      id: 4,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "print(l[-2])",
      options: ['10', '20', '30', '40'],
      answer: 1,
    ),
    Question(
      id: 5,
      question: "Что выведет программа?\n"
          "l = []\n"
          "print(l)",
      options: ['[]', 'list()', '[None]', '[0]'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "l.append(40)\n"
          "print(l[-1])",
      options: ['10', '20', '30', '40'],
      answer: 3,
    ),
    Question(
      id: 7,
      question: "Что выведет программа?\n"
          "l = [10]\n"
          "l.extend([40,50])\n"
          "print(l[2])",
      options: ['50', '40', '30', '10'],
      answer: 0,
    ),
    Question(
      id: 8,
      question: "Что выведет программа?\n"
          "l = [10]\n"
          "l.extend([40,50])\n"
          "print(l[2])",
      options: ['50', '40', '30', '10'],
      answer: 0,
    ),
    Question(
      id: 9,
      question: "Что выведет программа?\n"
          "l = [10]\n"
          "l.extend([40,50])\n"
          "print(l[2])",
      options: ['50', '40', '30', '10'],
      answer: 0,
    ),
    Question(
      id: 10,
      question: "Данная программа вызовет ошибку?\n"
          "l = [10, 20, 30]\n"
          "print(l[3])",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 11,
      question: "Данная программа вызовет ошибку?\n"
          "l = [10, 20, 30]\n"
          "print(l[-3])",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 12,
      question: "Данная программа вызовет ошибку?\n"
          "l = [10, 20, 30]\n"
          "l.append('apple')",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 13,
      question: "Данная программа вызовет ошибку?\n"
          "l = [10, 20, 30]\n"
          "print(l[-3])",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 14,
      question: "Метод insert() возвращает индекс элемента в списке?",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 15,
      question: "Что выведет программа?\n"
          "l = [i**2 for i in range(5)]\n"
          "print(l[4])",
      options: ['5', '4', '16', '25'],
      answer: 2,
    ),
  ],
  "Split и Join": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "print(l[0])",
      options: ['10', '20', '30', '40'],
      answer: 0,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "print(l[2])",
      options: ['10', '20', '30', '40'],
      answer: 2,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "print(l[-1])",
      options: ['10', '20', '30', '40'],
      answer: 2,
    ),
    Question(
      id: 4,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "print(l[-2])",
      options: ['10', '20', '30', '40'],
      answer: 1,
    ),
    Question(
      id: 5,
      question: "Что выведет программа?\n"
          "l = []\n"
          "print(l)",
      options: ['[]', 'list()', '[None]', '[0]'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "Что выведет программа?\n"
          "l = [10, 20, 30]\n"
          "l.append(40)\n"
          "print(l[-1])",
      options: ['10', '20', '30', '40'],
      answer: 3,
    ),
    Question(
      id: 7,
      question: "Что выведет программа?\n"
          "l = [10]\n"
          "l.extend([40,50])\n"
          "print(l[2])",
      options: ['50', '40', '30', '10'],
      answer: 0,
    ),
    Question(
      id: 8,
      question: "Что выведет программа?\n"
          "l = [10]\n"
          "l.extend([40,50])\n"
          "print(l[2])",
      options: ['50', '40', '30', '10'],
      answer: 0,
    ),
    Question(
      id: 9,
      question: "Что выведет программа?\n"
          "l = [10]\n"
          "l.extend([40,50])\n"
          "print(l[2])",
      options: ['50', '40', '30', '10'],
      answer: 0,
    ),
    Question(
      id: 10,
      question: "Данная программа вызовет ошибку?\n"
          "l = [10, 20, 30]\n"
          "print(l[3])",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 11,
      question: "Данная программа вызовет ошибку?\n"
          "l = [10, 20, 30]\n"
          "print(l[-3])",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 12,
      question: "Данная программа вызовет ошибку?\n"
          "l = [10, 20, 30]\n"
          "l.append('apple')",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 13,
      question: "Данная программа вызовет ошибку?\n"
          "l = [10, 20, 30]\n"
          "print(l[-3])",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 14,
      question: "Метод insert() возвращает индекс элемента в списке?",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 15,
      question: "Что выведет программа?\n"
          "l = [i**2 for i in range(5)]\n"
          "print(l[4])",
      options: ['5', '4', '16', '25'],
      answer: 2,
    ),
  ],
  "Словари": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "l = {'banana':3.14, 'apple':7, 'onion':0}\n"
          "print(l['banana'])",
      options: ['7', '3', '3.14', '14'],
      answer: 2,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\n"
          "l = {'banana':[1,2,3,7]}\n"
          "print(l['banana'][1])",
      options: ['2', '1', '7', '3'],
      answer: 0,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\n"
          "l = {}\n"
          "l['onion'] = 20\n"
          "print(l['onion'])",
      options: ['0', 'None', '20', '7'],
      answer: 2,
    ),
    Question(
      id: 4,
      question: "Что выведет программа?\n"
          "l = {'banana':3.14, 'apple':7, 'onion':0}\n"
          "l['onion'] = 20\n"
          "print(l['onion'])",
      options: ['0', 'None', '20', '7'],
      answer: 2,
    ),
    Question(
      id: 5,
      question: "Что выведет программа?\n"
          "l = {'banana':3.14, 'apple':7, 'onion':0}\n"
          "l.clear()\n"
          "print(l)",
      options: ['{}', 'None', "{'banana':3.14, 'apple':7,\n'onion':0}", '0'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "Что выведет программа?\n"
          "l = {'a':1, 'b':2, 'c':5}\n"
          "print(l.pop('b'))",
      options: ['1', '2', "{'a':1, 'b':2, 'c':5}", '5'],
      answer: 1,
    ),
    Question(
      id: 7,
      question: "Что выведет программа?\n"
          "l = {'a':1, 'b':2, 'c':5}\n"
          "r = {'b': 20, 'd': 5, 'e': 3}\n"
          "l.update(r)\n"
          "print(l['b'])",
      options: ['1', '20', '2', '3'],
      answer: 2,
    ),
    Question(
      id: 8,
      question: "Эта программа вызовет ошибку?\n"
          "l = {'banana':3.14, 'apple':7, 'onion':0}\n"
          "print(l['potato'])",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 9,
      question: "Эта программа вызовет ошибку?\n"
          "l = {'banana':3.14, 'apple':7, 'onion':0}\n"
          "l.clear()\n"
          "print(l['banana'])",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 10,
      question: "Эта программа вызовет ошибку?\n"
          "l = {'banana':3.14, 'apple':7, 'onion':0}\n"
          "l.pop('banana')\n"
          "print(l['apple'])",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 11,
      question: "Метод get() возвращает значение по ключу?",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 12,
      question: "Метод keys() возвращает пары (ключ, значение)?",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
  ],
  "Функции \nбез параметров": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "def f():\n"
          "   print('12')\n"
          "f()",
      options: ['0', 'None', '12', 'Не выведет ничего'],
      answer: 2,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\n"
          "def f():\n"
          "   n = 20\n"
          "f()",
      options: ['0', 'None', '20', 'Не выведет ничего'],
      answer: 3,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\n"
          "def f():\n"
          "   print(20, end='')\n"
          "f()\n"
          "f()",
      options: ['2020', '20 20', '20', 'Не выведет ничего'],
      answer: 0,
    ),
    Question(
      id: 4,
      question: "Вызовет ли ошибку данная программа?\n"
          "def 1f():\n"
          "   print(1)\n"
          "f()",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 5,
      question: "Вызовет ли ошибку данная программа?\n"
          "def f1():\n"
          "   print(1)\n"
          "f()",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "Вызовет ли ошибку данная программа?\n"
          "def f():\n"
          "   print(120)\n"
          "F()",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 7,
      question: "Вызовет ли ошибку данная программа?\n"
          "def f1():\n"
          "   print(1)\n"
          "f1()",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
  ],
  "Функции \nс параметрами": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "def f(n):\n"
          "   print(n + 20)\n"
          "f(0)",
      options: ['0', 'n + 20', '20', 'Не выведет ничего'],
      answer: 2,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\n"
          "def f(n):\n"
          "   n = n + 20\n"
          "f(0)",
      options: ['0', 'n + 20', '20', 'Не выведет ничего'],
      answer: 3,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\n"
          "def f(n):\n"
          "   print(n*'1')\n"
          "f(2)",
      options: ['11', '111', '2', 'Не выведет ничего'],
      answer: 0,
    ),
    Question(
      id: 4,
      question: "Что выведет программа?\n"
          "def f(n):\n"
          "   print(n*7)\n"
          "f(4)",
      options: ['28', '777', '3', 'Не выведет ничего'],
      answer: 0,
    ),
    Question(
      id: 5,
      question: "Эта программа вызовет ошибку?\n"
          "def f(n):\n"
          "   print(n*7)\n"
          "f(n)",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "Эта программа вызовет ошибку?\n"
          "def f(1):\n"
          "   print(7)\n"
          "f(1)",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 7,
      question: "Эта программа выведет 44 на экран?\n"
          "def f(n):\n"
          "   print(n + 20)\n"
          "f(24)",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 8,
      question: "Параметр функции можно задать списком?",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
  ],
  "Глобальные \nи локальные\nпеременные": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "n = 100\n"
          "def f(n):\n"
          "   print(n + 20)\n"
          "f(30)",
      options: ['0', '100', '120', '50'],
      answer: 3,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\n"
          "n = 100\n"
          "def f(n):\n"
          "   print(n + 20)\n"
          "f(n)",
      options: ['0', '100', '120', '50'],
      answer: 2,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\n"
          "m = 100\n"
          "def f(n):\n"
          "   global m\n"
          "   print(m + n)\n"
          "f(20)",
      options: ['0', '100', '120', '80'],
      answer: 2,
    ),
    Question(
      id: 4,
      question: "Вызовет ли данная программа ошибку?\n"
          "m = 100\n"
          "def f(n):\n"
          "   print(m + n)\n"
          "f(m)",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 5,
      question: "Вызовет ли данная программа ошибку?\n"
          "def f(n):\n"
          "   print(n)\n"
          "f(n)",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "Вызовет ли данная программа ошибку?\n"
          "def f(n):\n"
          "   global m\n"
          "   print(m + n)\n"
          "f(2)",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
  ],
  "Функции \nс возвратом \nзначения": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "def f(n):\n"
          "   return n*5\n"
          "print(f(10))",
      options: ['0', '100', '150', '50'],
      answer: 3,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\n"
          "def f(a, b, c):\n"
          "   return a + b*c\n"
          "print(f(10, 20, 30))",
      options: ['60', '610', '320', '230'],
      answer: 1,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\n"
          "def f(a, b, c):\n"
          "   a,b,c = a - 20, b + 30, c*2\n"
          "   return b\n"
          "print(f(10, 20, 30))",
      options: ['60', '-10', '50', '20'],
      answer: 2,
    ),
    Question(
      id: 4,
      question: "Что выведет программа?\n"
          "def f(a, b, c):\n"
          "   a,b,c = a - 20, b + 30, c*2\n"
          "   return b\n"
          "print(f(10, 20, 30))",
      options: ['60', '-10', '50', '20'],
      answer: 2,
    ),
    Question(
      id: 5,
      question: "Что выведет программа?\n"
          "def f(a, b, c):\n"
          "   return c + b + a\n"
          "print(f(10, 20, 30))",
      options: ['60', '-10', '50', '20'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "Данная программа выведет 111 на экран?\n"
          "def f(a, b, c):\n"
          "   return (b + a)*'1'\n"
          "print(f(1, 2, 3))",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 7,
      question: "Данная программа выведет 120 на экран?\n"
          "def f(a, b, c):\n"
          "   return b*4 + a + c\n"
          "f(10, 20, 30)",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 8,
      question: "Данная программа ничего не выведет на экран?\n"
          "def f(a, b, c):\n"
          "   return b*4 + a + c\n"
          "f(10, 20, 30)",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 9,
      question: "Данная программа ничего не выведет на экран?\n"
          "def f(a, b, c):\n"
          "   return a*b*c\n"
          "print(f(10, 20, 30))",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 10,
      question: "Данная программа вызовет ошибку?\n"
          "def f(a, b):\n"
          "   return a*b*c\n"
          "print(f(10, 20, 30))",
      options: ['Да', 'Нет'],
      answer: 1,
    ),
    Question(
      id: 11,
      question: "Внутри функции можно вызвать другую функцию?",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
  ],
  "Пользовательские \nфункции \nвысшего порядка": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "def f(func):\n"
          "   return func(10)\n"
          "def dec(n):\n"
          "   return n*5\n"
          "print(f(dec))",
      options: ['0', '100', '150', '50'],
      answer: 3,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\n"
          "def f(func):\n"
          "   return func(0)\n"
          "def dec(n):\n"
          "   return n - 20\n"
          "print(f(dec))",
      options: ['-20', '10', '20', '0'],
      answer: 0,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\n"
          "def f(func):\n"
          "   func('b')\n"
          "def print_str5(str):\n"
          "   print('a'*5)\n"
          "f(print_str5)",
      options: ['bbbbb', 'b', 'aaaaa', 'a'],
      answer: 2,
    ),
    Question(
      id: 4,
      question: "Что выведет программа?\n"
          "def f(func, n = 50):\n"
          "   return func(n)\n"
          "def sqare(n):\n"
          "   return n*n\n"
          "print(f(sqare, 20))",
      options: ['2500', '100', '200', '400'],
      answer: 3,
    ),
    Question(
      id: 5,
      question: "Что выведет программа?\n"
          "def f(func, n = 50):\n"
          "   return func(n)\n"
          "def sqare(n):\n"
          "   return n*n\n"
          "print(f(sqare))",
      options: ['2500', '100', '200', '400'],
      answer: 0,
    ),
    Question(
      id: 6,
      question: "В какой строке ошибка?\n"
          "1)def f(func):\n"
          "2)   return func(100)\n"
          "3)def sqare(n):\n"
          "4)   return n*n\n"
          "5)print(f(sqare(20)))",
      options: ['1', '2', '4', '5'],
      answer: 3,
    ),
    Question(
      id: 7,
      question: "В какой строке ошибка?\n"
          "1)def f(func):\n"
          "2)   return f(100)\n"
          "3)def sqare(n):\n"
          "4)   return n*n\n"
          "5)print(f(sqare))",
      options: ['1', '2', '4', '5'],
      answer: 1,
    ),
    Question(
      id: 8,
      question: "В какой строке ошибка?\n"
          "1)def f(func):\n"
          "2)   return Func(100)\n"
          "3)def sqare(n):\n"
          "4)   return n*n\n"
          "5)print(f(sqare))",
      options: ['1', '2', '4', '5'],
      answer: 1,
    ),
    Question(
      id: 9,
      question: "В какой строке ошибка?\n"
          "1)def f(func):\n"
          "2)   return f(100)\n"
          "3)def sqare(n):\n"
          "4)   return n*m\n"
          "5)print(f(sqare))",
      options: ['1', '2', '4', '5'],
      answer: 2,
    ),
    Question(
      id: 10,
      question: "Переменную можно задать функцией?",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
    Question(
      id: 11,
      question:
          "Функцию можно переопределить другой функцией\n(Например, func1 = func2)?",
      options: ['Да', 'Нет'],
      answer: 0,
    ),
  ],
  "Основные функции \nвысшего порядка": [
    Question(
      id: 1,
      question: "Что выведет программа?\n"
          "print(sum(list(map(int, ['1', '2', '3']))))",
      options: ['123', '6', '321', '0'],
      answer: 1,
    ),
    Question(
      id: 2,
      question: "Что выведет программа?\ndef add3(n):\n    return n + 3\n"
          "print(sum(list(map(add3, ['1', '2', '3']))))",
      options: ['456', '6', '15', '3'],
      answer: 2,
    ),
    Question(
      id: 3,
      question: "Что выведет программа?\ndef add3(n):\n    return n + 3\n"
          "print(list(map(add3, ['1', '2', '3']))[0])",
      options: ['4', '6', '15', '5'],
      answer: 0,
    ),
    Question(
      id: 4,
      question:
          "функция высшего порядка filter(func, l) применяет функцию func ко всем элементам списка l?",
      options: ["Да", "Нет"],
      answer: 1,
    ),
    Question(
      id: 5,
      question:
          "функция высшего порядка map(func, l) применяет функцию func ко всем элементам списка l?",
      options: ["Да", "Нет"],
      answer: 0,
    )
  ],
  "Работа с файлами": [
    Question(
      id: 1,
      question:
          "Программа снизу выводит 16 на экран. Сколько строк было в файле 'text.txt'?\n"
          "f = open('text.txt')\n"
          "n = 2\n"
          "for line in f:\n"
          "    n = n ** 2\n"
          "print(n)\n"
          "f.close()",
      options: ['2', '3', '4', '8'],
      answer: 1,
    ),
    Question(
      id: 2,
      question:
          "Программа снизу выводит 16 на экран. Сколько строк было в файле 'text.txt'?\n"
          "f = open('text.txt')\n"
          "n = 2\n"
          "for line in f:\n"
          "    n = n + 2\n"
          "print(n)\n"
          "f.close()",
      options: ['5', '6', '7', '16'],
      answer: 2,
    ),
    Question(
      id: 3,
      question:
          "Программа снизу выводит 4 на экран. Сколько строк было в файле 'text.txt'?\n"
          "f = open('text.txt')\n"
          "n = 20\n"
          "for line in f:\n"
          "    n = n - 2\n"
          "print(n)\n"
          "f.close()",
      options: ['6', '7', '8', '4'],
      answer: 2,
    ),
    Question(
      id: 4,
      question: "Запишет ли программа текст в файл 'text.txt'?\n"
          "f = open('text.txt')\n"
          "f.write('some_text')\n"
          "f.close()",
      options: [
        'Да, запишет',
        'Нет, так как файл\nне закрыт',
        'Нет, так как название\nфайла некорректно введено',
        'Нет, так как файл\nне открыт на запись'
      ],
      answer: 3,
    ),
    Question(
      id: 5,
      question: "Запишет ли программа текст в файл 'text.txt'?\n"
          "f = open('text_txt', 'w')\n"
          "f.write('some_text')\n"
          "f.close()",
      options: [
        'Да, запишет',
        'Нет, так как файл\nне закрыт',
        'Нет, так как название\nфайла некорректно введено',
        'Нет, так как файл\nне открыт на запись'
      ],
      answer: 2,
    ),
    Question(
      id: 6,
      question: "Запишет ли программа текст в файл 'text.txt'?\n"
          "f = open('text.txt', 'w')\n"
          "f.write('some_text')\n"
          "f.close()",
      options: [
        'Да, запишет',
        'Нет, так как файл\nне закрыт',
        'Нет, так как название\nфайла некорректно введено',
        'Нет, так как файл\nне открыт на запись'
      ],
      answer: 0,
    ),
    Question(
      id: 7,
      question: "Запишет ли программа текст в файл 'text.txt'?\n"
          "f = open('text.txt', 'w')\n"
          "f.write('some_text')",
      options: [
        'Да, запишет',
        'Нет, так как файл\nне закрыт',
        'Нет, так как название\nфайла некорректно введено',
        'Нет, так как файл не\nоткрыт на запись'
      ],
      answer: 1,
    ),
  ]
};
