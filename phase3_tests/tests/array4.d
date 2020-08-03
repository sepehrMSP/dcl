class Point {
	int x;
	int y;

	void Init(int xVal, int yVal) {
	   x = xVal;
	   y = yVal;
	}
 	void PrintSelf() {
		Print("[", x, ", ", y, "]\n");
	}
}

class Rect {
	Point[] corners;

	void Init(int x, int y, int w, int h) {
		corners = NewArray(2, Point);
		corners[0] = new Point;
		corners[0].Init(x, y);
		corners[1] = new Point;
		corners[1].Init(x +w, y+h);
	}
 	void PrintSelf() {
		Print("{\n lower left = ");
		corners[0].PrintSelf();
		Print(" upper right = ");
		corners[1].PrintSelf();
    		Print("}\n");
	}
}

int main()
{
	Rect r;
	r = new Rect;
	r.Init(10, 10, 5, 28);
	r.PrintSelf();
}
