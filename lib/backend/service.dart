class Service {
  String? title;
  String? icon;
  List<Service> children = [];

  bool get isFolder => children.isNotEmpty;

  Service.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon = json['icon'];
    if (json['children'] != null) {
      json['children'].forEach((v) {
        children.add(Service.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['icon'] = icon;
    if (children.isNotEmpty) {
      data['children'] = children.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'Service{title: $title, icon: $icon, children: $children}';
  }
}
