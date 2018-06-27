class house
{
  int _age = 40;
  String color = "White";
  int width = 20;
  int length = 50;

void test()
{
  _age = 42;
}


//GETTER and SETTER
int get footage=> width * length;

int get yearsold => _age;

set yearsold(int value) => _age = value;


}