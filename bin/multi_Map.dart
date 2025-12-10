void main(){
  Map<String, dynamic> users={
    'user1':{
      'name':'Muhammad',
      'age':25,
      'city':'Pabna'
    },
    'user2':{
     'name':'Ahmed',
     'age':23,
     'city':'Rajshahi'
    },
  };
  print('Nested user name:${users['user1']?['user2']}');
  print('Key:${users.keys}');
  print('Value:${users.values}');
  print("Entries:${users.entries}");
  print(users);
}