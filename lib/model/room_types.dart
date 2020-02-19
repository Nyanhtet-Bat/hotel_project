class Autogenerated {
  List<RoomTypes> roomTypes;

  Autogenerated({this.roomTypes});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    if (json['RoomTypes'] != null) {
      roomTypes = new List<RoomTypes>();
      json['RoomTypes'].forEach((v) {
        roomTypes.add(new RoomTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.roomTypes != null) {
      data['RoomTypes'] = this.roomTypes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RoomTypes {
  int id;
  String roomName;
  int totalRoom;
  int price;
  String facilityName;
  String description;
  String image;
  String createdAt;
  String updatedAt;

  RoomTypes(
      {this.id,
        this.roomName,
        this.totalRoom,
        this.price,
        this.facilityName,
        this.description,
        this.image,
        this.createdAt,
        this.updatedAt});

  RoomTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roomName = json['room_name'];
    totalRoom = json['total_room'];
    price = json['price'];
    facilityName = json['facility_name'];
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['room_name'] = this.roomName;
    data['total_room'] = this.totalRoom;
    data['price'] = this.price;
    data['facility_name'] = this.facilityName;
    data['description'] = this.description;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
