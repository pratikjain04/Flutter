import 'stray.dart';
import 'trainer.dart';


void log<T>(T value)
{
    print(value);
}
T add<T extends num>(T value)
{
  return value+1;
}
main(List<String> arguments)
{
  var t;

  print("Hello");

  log("2 Times");
  t=add(5);
  print(t);
stray fido = new stray();
trainer<stray> bob = new trainer<stray>();
bob.add(fido);
bob.train();
bob.remove(fido);
}