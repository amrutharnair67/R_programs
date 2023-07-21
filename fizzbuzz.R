for (i in 1:100)
{
  print(i)
  if (i%%3==0){
    print("fuz")
  }
  else if(i%%5==0){
    print("buzz")
  }
  else if(i%%3 && i%%5){
    print("fizzbuzz")
  }
}
