import "dart:async";
/**
 * 这个程序同时使用async和await来处理一个学生充值的异步案例。sut3和stu6在打饭的时候需要
 * 充值，后面的同学无需等待他们。
 */
main() {
  stu1();
  stu2();
  //stu3();
  stu3().then((content) => print(content));
  //stu3_recharge().then((content) => print(content));
  stu4();
  stu5();
  stu6();
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
  int aNum = await stu3_recharge();//  可以等同于在上面函数队列里写stu3_recharge.then((content) => print(content));
  print("stu3 done,recharge:" + aNum.toString());
}

Future stu6() async{
  int aDouble = await stu6_recharge();//await表明异步 可以省去future的定义
  print("stu6 done,recharge:"+ aDouble.toString());
}

Future<int> stu3_recharge() async {
  int aNum;
  for (int i = 0;i < 1000;i++) {
    aNum = i;
  }

  return aNum;
}

Future<int> stu6_recharge() async {
  int balance;
  for (int i = 0;i < 1000000;i++) {//执行的维度小 所以比3快 异步之后还是有队列 先到先执行 和维度无关/
    balance = i;
  }
  return balance;
}
