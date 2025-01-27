class UserModel {
  final String fName;
  final String lName;
  final String email;
  final String image;
  UserModel(
      {required this.fName,
      required this.lName,
      required this.email,
      required this.image});

  factory UserModel.fromJason({required Map<String, dynamic> user}) {
    return UserModel(
        fName: user['first_Name'],
        lName: user['last_Name'],
        email: user['email'],
        image: user['image']);
  }
}
