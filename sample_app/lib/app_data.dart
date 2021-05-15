class AppData {
  AppData._privateConstructor();
  static final AppData instance = AppData._privateConstructor();

  bool isLoggedIn = false;
  User currentUser = User(
      fname: 'Raja',
      lname: 'Shah',
      email: 'rajashah33@gmail.com',
      phone: '0032587410',
      gender: 'Male',
      dob: 'dd-mm-yy',
      pincode: 'xxxxxx',
      location: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
}

class User {
  String fname;
  String lname;
  String email;
  String phone;
  String gender;
  String dob;
  String pincode;
  String location;

  User({
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.gender,
    this.dob,
    this.pincode,
    this.location,
  });
}
