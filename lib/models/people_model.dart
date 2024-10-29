class People{
  final String peopleName;
  final String peopleUrl;
  final int peopleYears;
  final String peopleEmail;

People({required this.peopleName, required this.peopleUrl,  this.peopleYears = 0,  this.peopleEmail = '' });

}

final List<People> teacherData =[
People(peopleName: 'Фролов Николай Иванович', peopleUrl: 'assets/teacher1.png', peopleYears: 12, peopleEmail: 'nikolay@gmail.com')
];

final List<People> teacherMiniData =[
People(peopleName: 'Фролов Н. И.', peopleUrl: 'assets/teacher1.png'),
People(peopleName: 'Игнатова М.А', peopleUrl: 'assets/teacher2.png')
];