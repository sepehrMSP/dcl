class Animal {
  int num1;
  int num2;
  void Method1() {
    Print(this.num1, num2);
  }
}

class Cow extends Animal {
  int num3;
   int num4;

  void Init() {
    num1 = 10;
    num2 = num1 * 2;
    num3 = 28;
    num4 = -9;
  }

  void Method2()
 {
   Print(num1, num2, num3, num4);
   Method1();
  }
}

int main() {
  Cow b;

  b = new Cow;
  b.Init();
  b.Method2();
}
