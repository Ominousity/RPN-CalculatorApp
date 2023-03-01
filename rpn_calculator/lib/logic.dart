import 'dart:io';

// #region Command Pattern
abstract class Command {
  num execute();
}

class Addition implements Command {
  final num a;
  final num b;

  Addition(this.a, this.b);

  @override
  num execute() {
    return (b + a);
  }
}

class Subrtaction implements Command {
  final num a;
  final num b;

  Subrtaction(this.a, this.b);

  @override
  num execute() {
    return (b - a);
  }
}

class Multiplication implements Command {
  final num a;
  final num b;

  Multiplication(this.a, this.b);

  @override
  num execute() {
    return (b * a);
  }
}

class Division implements Command {
  final num a;
  final num b;

  Division(this.a, this.b);

  @override
  num execute() {
    return (b / a);
  }
}

class Stacks {
  static List<num> stack = [];
}
// #endregion

void main() {}

class Logic {
  void enterPressed(String input) {
    Stacks stackHandler = new Stacks();

    switch (input) {
      case "+":
        {
          if (Stacks.stack.length < 2) {
            print("Add another number before attempting an operation");
          } else {
            num a = Stacks.stack.elementAt(Stacks.stack.length - 2);
            num b = Stacks.stack.last;

            Stacks.stack.removeAt(Stacks.stack.length - 2);
            Stacks.stack.removeLast();

            Addition addition = new Addition(a, b);
            num x = addition.execute();
            Stacks.stack.add(x);
          }
        }
        break;
      case "-":
        {
          if (Stacks.stack.length < 2) {
            print("Add another number before attempting an operation");
          } else {
            num a = Stacks.stack.elementAt(Stacks.stack.length - 2);
            num b = Stacks.stack.last;

            Stacks.stack.removeAt(Stacks.stack.length - 2);
            Stacks.stack.removeLast();

            Subrtaction subrtaction = new Subrtaction(a, b);
            num x = subrtaction.execute();
            Stacks.stack.add(x);
          }
        }
        break;
      case "*":
        {
          if (Stacks.stack.length < 2) {
            print("Add another number before attempting an operation");
          } else {
            num a = Stacks.stack.elementAt(Stacks.stack.length - 2);
            num b = Stacks.stack.last;

            Stacks.stack.removeAt(Stacks.stack.length - 2);
            Stacks.stack.removeLast();

            Multiplication multiplication = new Multiplication(a, b);
            num x = multiplication.execute();
            Stacks.stack.add(x);
          }
        }
        break;
      case "/":
        {
          if (Stacks.stack.length < 2) {
            print("Add another number before attempting an operation");
          } else {
            num a = Stacks.stack.elementAt(Stacks.stack.length - 2);
            num b = Stacks.stack.last;

            Stacks.stack.removeAt(Stacks.stack.length - 2);
            Stacks.stack.removeLast();

            Division division = new Division(a, b);
            num x = division.execute();
            Stacks.stack.add(x);
          }
        }
        break;
      default:
        {
          if (input == "") {
            print("Input needed");
          } else {
            try {
              Stacks.stack.add(num.parse(input));
            } catch (e) {
              print("Only numbers are valid");
            }
          }
        }
    }
  }
}
