void main(){
// 변수 사용 핵심 : 선언 시점에 다양한 타입을 지정할 수 있다.
// : var를 사용 할 수 있다. 변수 데이터타입을 안정하고 변수 선언 가능
var a = 1;
var b = 'string';
var c = 1.33;

// dynamic : 함수의 파라미터값 타입이 정해지지 않았을때 사용, 함수의 파라미터에 주로 사용(var 같이)
dynamic d = 23;
myprint(d);

// num : int형과 double 타입을 포함한 데이터타입, json파일을 불러올때 주로사용, 온도: 19도..14.3도
num e = 10;
num f = 10.0;

//final : 상수 선언, 한번 선언되면 변경될 수 없는 값, 중간에 바꿀 수 없음
final fin = 10;
//const : 상수선언, final과 거의 유사, 변수 재사용을 많이 할 때 유리하나 final 써도 상관 없음
const con = 10;

// collection : 파이썬의 리스트와 같은 역할이나 데이터타입은 한가지 밖에 못씀, var타입으로 쉽게 선언가능 (itmes2)
List<String> items1 = ['a','c','d'];
List<int> intList = [1,3,4];
var items2 = ['a','c','d'];
print (items1);
print (items2);
print (intList[1]);

// set : 집합이랑 같음, 중복제거됨 , 이것도 쉽게 var선언 가능
Set<String> aa = {'a','2','a'};
var aa2 = {'a','2','a'};
print(aa);
print(aa2);

// map : key 와 value가 존재함, python의 dic 같은 타입
var itemMap  = {'key1':1,'key2':2, 'key3':3};
print (itemMap);
print (itemMap['key2']);

// Methods : https://api.dart.dev/stable/2.8.4/dart-core/List-class.html 공식 문서 참조

// ...<list Name> :list데이터 가져오기
List<int> intListEx1 = [1,2,3];
List<int> intListEx2 = [...intListEx1,1,2,3];
print(intListEx2);


// function para값을 "option"으로 받기
// int age를 안넣어도 컴파일 오류 안남 , 함수선언시 파라미터값을 {}으로 감싸줘야함
something1(name: "leebosung" );
//something2의 age는 default값이 10이 들어가있기에 만약 공백으로 두고 컴파일하면 10 프린트됨
something2(name: "leebosung" );


// is 는 타입 판별 함수
var aa3 = 1;
if (aa3 is int){
  print('정수');
}

// 변수 형변환: typeCast
//  int a1 = 1;
//  double b1 = a1 as double;

// ?? : null값일때 나오는 함수
// ?. :  null이 아닐때
var name;
var name2 = 0;
print (name); // null 출력 됨
print (name ?? "값이 없습니다");
print (name2 ?.toString());

}


void myprint( dynamic i) {
  print ( i );
}

void something1({String name, int age}){
}
void something2({String name, int age = 10}){
}