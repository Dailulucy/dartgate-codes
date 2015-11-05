import "dart:async";
/**
 * 这个程序同时使用在main中使用了async 和await来强制stu3后stu6后面的语句必须等到stu3和stu6执行完
 * 后才能执行。因此有成了*同步*模式
 */
main() async{
  stu1();
  stu2();
  await stu3();//调用异步函数，加在这里编程同步了，等到他完成为止，Use await in an async function to pause execution until a Future completes
  stu4();
  stu5();
  await stu6();
  stu7();
  stu8();
  stu9();
  stu10();
}

void stu1() => print("stu1 done");

void stu2() => print("stu2 done");

void stu4() => print("stu4 done");

void stu5() => print("stu5 done");

void stu7() => print("stu7 done");

void stu8() => print("stu8 done");

void stu9() => print("stu9 done");

void stu10() => print("stu10 done");


Future stu3() async{
  int aNum = await stu3_recharge();
  print("stu3 done,recharge:" + aNum.toString());
}

Future stu6() async{
  int aDouble = await stu6_recharge();
  print("stu6 done,recharge:"+ aDouble.toString());
}

Future<int> stu3_recharge() async {
  int aNum;
  for (int i = 0;i < 10000000;i++) {
    aNum = i;
  }

  return aNum;
}

int stu6_recharge() {
  int balance;
  for (int i = 0;i < 10000;i++) {
    balance = i;
  }
  return balance;
}
