void main(){
  Map<String, dynamic> user={
    'name':'Tuhin',
    'age':24,
    'city':'Dhaka'
  };
  print('User Name:${user['name']}');
  print('User Age:${user['age']}');
  print(user);
  print('Key:${user.keys}');
  print('Value:${user.values}');
  print("Entries:${user.entries}\n");

  //Loop through map using forEach
  user.forEach((key, value){
    print('$key: $value');
  });

  //Loop using entries
  for(var entry in user.entries){
    print('Key:${entry.key}, Value:${entry.value}');
  }

}