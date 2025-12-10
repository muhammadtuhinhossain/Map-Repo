void main(){
  Map<String, dynamic> person= {
    'name': 'Mahadi',
    'age':20,
    'city':'Bogura'
  };

  bool includePhone=true;
  Map<String, String>? optionalData={'country':'Bangladeh'};
  Map<String, dynamic> newUser={
    ...person,
    if(includePhone) 'phone':'0172429999',
    ...?(optionalData)
  };
  print('NewUser:$newUser');

}