class Barn
{
   void AddCow(Cow cow) {
      cow.Method1();
    }
}


int main() {
  Cow a;
  Jersey j;
  Cow[] c;
  Barn b;

  c = NewArray(1, Cow);
  b = new Barn;
  a = new Cow;
  a.Init(24);
  a.Method2();
  j = new Jersey;
  j.Init(33);
  a = j;
  a.Method2();
  j.Method2();
  j.Method3();
 b.AddCow(a);
 b.AddCow(j);
}

class Jersey extends Cow {
   void Method3() {
	Print("Jersey3");
      Method2();
   }
   void Method1() {
      Print("Jersey");
	PrintSelf();
   }
}

class Animal {
  int num1;
   void Init(int n) { num1 = n; }

	void Method1() {
	    Print("Animal");
	    PrintSelf();
	  }	
	  void PrintSelf()
	{
	    Print("num1 = ", num1, "\n");
	}	
}

class Cow extends Animal {
   void Method2() {
      Print("Cow2");
	Method1();
   }
   void Method1() {
    Print("Cow");
    PrintSelf();
  }
}





