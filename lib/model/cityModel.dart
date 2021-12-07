class TestModel
{
  String? name;


  TestModel({ this.name});

  TestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> Data = new Map<String, dynamic>();
    Data['name'] = this.name;

    return Data;
  }
}