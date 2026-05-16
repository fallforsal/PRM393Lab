import 'dart:async';

// ==========================================
// EXERCISE 4: DINH NGHIA CAC CLASS (OOP)
// ==========================================

/// Lop cha Car dai dien cho mot chiec o to co ban [cite: 99]
class Car {
  // Thuoc tinh cua xe [cite: 99]
  String brand;

  // Constructor mac dinh (Default Constructor)
  Car(this.brand);

  // Named constructor (Constructor co ten) [cite: 100]
  Car.anonymous() : brand = 'Unknown';

  // Phuong thuc hien thi thong tin [cite: 99]
  void drive() {
    print('Xe $brand dang chay tren duong.');
  }
}

/// Lop con ElectricCar ke thua tu lop Car [cite: 101]
class ElectricCar extends Car {
  int batteryCapacity;

  // Constructor cua lop con, goi super() de khoi tao thuoc tinh tu lop cha
  ElectricCar(String brand, this.batteryCapacity) : super(brand);

  // Ghi de phuong thuc drive() cua lop cha [cite: 101]
  @override
  void drive() {
    print('Xe dien $brand dang chay cuc em voi dung luong pin la $batteryCapacity kWh.');
  }
}

// ==========================================
// HAM MAIN - DIEM KHOI CHAN CHUONG TRINH
// ==========================================
void main() async {
  print('=== START LAB 2: DART ESSENTIALS ===\n');

  // ------------------------------------------
  // Exercise 1 – Basic Syntax & Data Types
  // ------------------------------------------
  print('--- Exercise 1 ---');

  // Khai bao cac bien voi cac kieu du lieu cot loi [cite: 80]
  int age = 21;
  double gpa = 3.8;
  String studentName = 'Nguyen Van A';
  bool isEnrolled = true;

  // Su dung print() va String interpolation ($var, ${expr}) de hien thi gia tri [cite: 81]
  print('Ten sinh vien: $studentName');
  print('Tuoi: $age | Diem GPA: $gpa');
  print('Trang thai nhap hoc: ${isEnrolled ? "Dang hoc" : "Da nghi"}');
  print('');


  // ------------------------------------------
  // Exercise 2 – Collections & Operators
  // ------------------------------------------
  print('--- Exercise 2 ---');

  // 1. Tao mot List chua cac so nguyen [cite: 85]
  List<int> scores = [85, 90, 78];
  scores.add(95); // Them phan tu vao List [cite: 88]
  print('Danh sach diem (List) sau khi them: $scores');

  // Su dung toan tu so hoc va toan tu so sanh [cite: 86]
  int totalScore = scores[0] + scores[1]; // Toan tu so hoc + va truy cap index [cite: 86, 88]
  bool isHighAchiever = totalScore > 170; // Toan tu so sanh > [cite: 86]
  print('Tong hai diem dau tien: $totalScore (Hoc luc cao: $isHighAchiever)');

  // 2. Tao mot Set chua cac gia tri duy nhat (khong trung lap) [cite: 87]
  Set<String> uniqueTags = {'Flutter', 'Dart', 'Flutter'};
  print('Cac nhan duy nhat (Set): $uniqueTags'); // Tu dong loai bo phan tu trung lap

  // 3. Tao mot Map luu tru du lieu dang cap key-value [cite: 87]
  Map<String, dynamic> courseInfo = {
    'id': 'M3',
    'title': 'Flutter Mobile App',
    'duration': '12 weeks'
  };
  courseInfo['mentor'] = 'Mr. John'; // Them/Truy cap phan tu trong Map [cite: 88]
  print('Thong tin khoa hoc (Map): $courseInfo');
  print('');


  // ------------------------------------------
  // Exercise 3 – Control Flow & Functions
  // ------------------------------------------
  print('--- Exercise 3 ---');

  int studentScore = 85;
  // Su dung cau truc if/else de kiem tra diem so [cite: 92]
  if (studentScore >= 90) {
    print('Xep loai: Xuan sac');
  } else if (studentScore >= 80) {
    print('Xep loai: Gioi');
  } else {
    print('Xep loai: Kha/Trung binh');
  }

  // Su dung switch case de kiem tra ngay trong tuan [cite: 93]
  int dayOfWeek = 2; // Gia dinh la Thu Hai
  switch (dayOfWeek) {
    case 1:
      print('Hom nay la Chu Nhat');
      break;
    case 2:
      print('Hom nay la Thu Hai');
      break;
    default:
      print('Hom nay la ngay lam viec khac');
  }

  // Duyet qua tap hop (Collection) bang cac loai vong lap [cite: 94]
  List<String> fruits = ['Tao', 'Chuoi', 'Cam'];

  print('-> Vong lap for-in:'); // [cite: 94]
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  print('-> Vong lap forEach():'); // [cite: 94]
  fruits.forEach((fruit) => print('ForEach Fruit: $fruit'));

  // Goi ham viet theo cu phap thong thuong [cite: 95]
  int standardResult = calculateArea(5, 10);
  print('Dien tich (Ham thong thuong): $standardResult');

  // Goi ham viet theo cu phap mui ten (Arrow syntax) [cite: 95]
  print('Ket qua binh phuong (Ham mui ten): ${squareNumber(6)}');
  print('');


  // ------------------------------------------
  // Exercise 4 – Intro to OOP
  // ------------------------------------------
  print('--- Exercise 4 ---');

  // Khoi tao doi tuong tu constructor mac dinh [cite: 102]
  Car myNormalCar = Car('Toyota');
  myNormalCar.drive(); // Goi phuong thuc cua lop cha

  // Khoi tao doi tuong tu named constructor [cite: 102]
  Car mysteryCar = Car.anonymous();
  mysteryCar.drive();

  // Khoi tao doi tuong tu lop con (ElectricCar) [cite: 102]
  ElectricCar myTesla = ElectricCar('Tesla Model S', 100);
  myTesla.drive(); // Goi phuong thuc da duoc override o lop con [cite: 102]
  print('');


  // ------------------------------------------
  // Exercise 5 – Async, Future, Null Safety & Streams
  // ------------------------------------------
  print('--- Exercise 5 ---');

  // 1. Thuc hanh Null-safety va cac toan tu tuong ung [cite: 108]
  String? nullableName; // Bien co the chua gia tri null nho dau ? [cite: 108]

  // Toan tu ?? (Null-coalescing): neu bien ben trai null thi lay gia tri mac dinh ben phai [cite: 108]
  String displayName = nullableName ?? 'Khach vang lai';
  print('Ten hien thi: $displayName');

  nullableName = 'Hoc vien Flutter';
  // Toan tu ! (Null assertion operator): Ep buoc he thong hieu rang bien chac chan khong null [cite: 108]
  print('Do dai chuoi (ep khong null): ${nullableName!.length}');

  // 2. Goi ham bat dong bo su dung Future va await [cite: 106]
  print('Bat dau tai du lieu tu may chu...');
  String data = await fetchUserData(); // Cho doi ket qua tra ve tu ham async [cite: 106]
  print('Ket qua nhan duoc: $data');

  // 3. Khoi tao mot Stream don gian va lang nghe (listen) cac gia tri truyen ve [cite: 109]
  print('Khoi chay Stream dem so giay:');
  Stream<int> numberStream = countStream(3);

  // Lang nghe du lieu phat ra tu Stream [cite: 109]
  await for (int val in numberStream) {
    print('Stream phat ra gia tri: $val');
  }

  print('\n=== END LAB 2 ===');
}

// ==========================================
// CAC HAM HO TRO (HELPER FUNCTIONS)
// ==========================================

/// Ham tinh dien tich viet theo cu phap thong thuong (Normal Syntax) [cite: 95]
int calculateArea(int width, int height) {
  return width * height;
}

/// Ham tinh binh phuong viet theo cu phap mui ten (Arrow/Short-hand Syntax) [cite: 95]
int squareNumber(int n) => n * n;

/// Ham bat dong bo gia lap tai du lieu su dung Future.delayed() [cite: 106, 107]
Future<String> fetchUserData() async {
  // Tri hoan 2 giay de gia lap do tre mang [cite: 107]
  await Future.delayed(const Duration(seconds: 2));
  return 'Du lieu nguoi dung bao mat da duoc tai thanh cong!';
}

/// Ham tao ra mot Stream phat ra cac so nguyen sau moi 1 giay [cite: 109]
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i; // Tu khoa yield dung de phat gia tri vao dong Stream
  }
}