// SQLTABLE

class Cases {
  final String id;
  final String name;
  final String gender;
  final int age;
  final String address;
  final String city;
  final String country;
  final String status;
  final String updated;
  final String filePath;
  final String videoType;

  Cases(
      {this.id,
      this.name,
      this.gender,
      this.age,
      this.address,
      this.city,
      this.country,
      this.status,
      this.updated,
      this.filePath,
      this.videoType});

  factory Cases.fromJson(Map<String, dynamic> json) {
    return Cases(
      id: json['_id'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      age: json['age'] as int,
      address: json['address'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      status: json['status'] as String,
      updated: json['updated'] as String,
      filePath: json['filePath'] as String,
      videoType: json['videoType'] as String,
    );
  }

  @override
  String toString() {
    return 'Cases{id: $id, name: $name, age: $age}';
  }
}
