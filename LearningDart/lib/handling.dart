import 'package:LearningDart/ColorError.dart';
/*
void catchError()
{
  print("Starting");


  try                //PUT the code you are doubtful about inside the try block
      {
        print("Trying");
        print(a);
      }
  catch(e)         //PUT the code about how you want to handle the
                   // received error if the error invokes
  {
    print("Catching the Error: " + e.toString());
  }
  finally
      {
        print("Finally the code is done");
      }
}


void raiseError(int a, int b)
{
  try
  {
      if(a!=b)
        throw 'Not Equal Error';

  }
  catch(e)
  {
      print("Catching Error: " + e.toString());

  }
  finally{
    print("We are done with throwing the Errors");
  }
}

void internal()
{
  throw 'NOPE';
}
void outer()
{
  try{
    internal();
  }
  catch(e)
  {
    print("Program Failed");
  }
}
*/
//Second Part of the Error Handling Tutorial by Void Realms!






enum Color {black, white, brown}
void cats(Color color)
{
  try
  { cae a;
    if(color!= Color.brown) throw new ColorError("Cats colour must be Black!");
    print("The colour is Black and its fine");
  }

   on ColorError catch(e)
  {
    print("You selected the wrong colour");
  }
  catch(e)
  {
    print("Unknown Error: " + e.toString());
  }
  finally
  {
    print("Error Resolved");
  }
}

main()
{ //  raiseError(2,10);
  //outer();
  cats(Color.black);


  return;

}