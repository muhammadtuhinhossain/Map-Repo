void main()
//Student Marks Management System (Using Map)
  Map<String, Map<String, int>> students={
    'Tuhin':{
      'Math':90,
      'English':70,
      'Bangla':60,
    },
    'Muhammad':{
      'Math':90,
      'English':85,
      'Bangla':80,
    },
    'Hasan':{
      'Math':90,
      'English':60,
      'Bangla':50,
    },
  };
  students.forEach((name, subject){
    print('$name:$subject');
  });
  students.forEach((name, subjects){
    int total = subjects.values.reduce((a, b) => a + b);
    double avg=total/subjects.length;
    print('$name- Total:$total, Average:${avg.toStringAsFixed(2)}');
  });
  String topStudent="";
  int topMarks=0;

  students.forEach((name, subject){
    int total= subject.values.reduce((a, b)=> a + b);
    if(total> topMarks){
      topMarks= total;
      topStudent=name;
    }
  });
  print('\nTop Score:$topStudent($topMarks marks)');

  Map<String, int> newStudentMarks={
    'Math':88,
    'English':70,
    'Bangla':50
  };
  students={
    ...students,
    "Ahmed": newStudentMarks,
  };
  print("---After new Student---");
  print(students);

  String newStudentName = "Abdullah";
  Map<String, int> newStudentMarks2={
    'Math':78,
    'English':70,
    'Bangla':60
  };
  if(students.containsKey(newStudentName)){
    print("\nStudent '$newStudentName' already exists!");
  }else{
    students[newStudentName]=newStudentMarks2;
    print("\nStudent '$newStudentName' added succesfully!");
  }

  //Update mark
  students['Tuhin']?['Math']=95;
  print(students['Tuhin']);

  students.remove('Tuhin');
  print(students);
}