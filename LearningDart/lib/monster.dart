import 'bird.dart';
import 'feline.dart';
import 'scorpian.dart';

//Interfaces
class monster implements bird,feline,scorpian
{
bool hasStinger() => true;
bool hasHair() => true;
bool hasWings()=> true;
bool hasBackbone() => true;
bool hasClaws() => true;

@override
  void speak()
{
  print("HAAAHOOOOOOOOOO");
}

}
int main()
{
  monster monster1 = new monster();
  monster1.speak();
}