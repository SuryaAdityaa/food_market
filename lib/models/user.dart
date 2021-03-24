part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User({
    this.id,
    this.name,
    this.email,
    this.address,
    this.houseNumber,
    this.phoneNumber,
    this.city,
    this.picturePath,
  });

  @override
  List<Object> get props => throw UnimplementedError();
}

User mockUser = User(
  id: 1,
  name: 'Surya',
  address: 'Jalan Jenderal Sudirman',
  city: 'Denpasar',
  houseNumber: 'AB CD',
  phoneNumber: '08199999999',
  email: 'sur.ya@xinchr.com',
  picturePath:
      'https://cdn3.f-cdn.com/contestentries/1376995/30494909/5b566bc71d308_thumb900.jpg',
);
