import 'package:flutter/material.dart';

void main(){
//class extends하기, 변수안에 넣엇
var person = new Person("lee", 13);
print(person.name);
print(person.age);

var person2 = new Person2('leee',25);
person2.name = "444";
print(person2.name);

var person3 = new Person3()..setAge(10);
print(person3.age);

// => 람다식 사용하기: 괄호를 줄일 수 있다
void func() => print("lam");


// Future(중요) : 비동기 코드
print('start');
netWorkRequest();
print('Finish');

}


Future netWorkRequest() async{
  print('네트워크 요청 시작');
  await Future.delayed(Duration(seconds: 1));
  print('1');
  await Future.delayed(Duration(seconds: 1));
  print('2');
  await Future.delayed(Duration(seconds: 1));
  print('3');
}





// class를 상속받을 때//  전체를 받을 때 : extends // methods만 받을때 : implement // 필요한 것만 받을 때: with
class Employee extends Person {
  Employee(String name, int age) : super(name, age);
}

class Employee2 implements Person {
  @override
  int age;
  @override
  String name;
  @override
  void setAge(int age) {
    // TODO: implement setAge
  }
  @override
  void setName(String name) {
    // TODO: implement setName
  }
}

class Employee3 with Person3{

  @override
  void setName(String name) {

  }
}


class Person {
  String name = "lee";
  int age=0;

  Person(this.name, this.age);

  void setName (String name) => this.name = name;
  void setAge (int age) => this.age = age;

}


class Person2 {
  // _ <=는 private 변수임 괄호안에서만 쓰겠
  String _name;
  int _age;
  Person2(this._name, this._age);

  String get name => '제 이름은 $_name 입니다';

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }
}


class Person3 {
  String name = "lee";
  int age = 0;

  void setName (String name) => this.name = name;
  void setAge (int age) => this.age = age;

}
