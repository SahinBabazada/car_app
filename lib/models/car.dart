class Car {
  num cityMpg;
  String carsClass;
  num combinationMpg;
  num cylinders;
  num displacement;
  String drive;
  String fuelType;
  num highwayMpg;
  String make;
  String model;
  String transmission;
  num year;

  Car({
    required this.cityMpg,
    required this.carsClass,
    required this.combinationMpg,
    required this.cylinders,
    required this.displacement,
    required this.drive,
    required this.fuelType,
    required this.highwayMpg,
    required this.make,
    required this.model,
    required this.transmission,
    required this.year,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        cityMpg: json["city_mpg"],
        carsClass: json["class"],
        combinationMpg: json["combination_mpg"],
        cylinders: json["cylinders"],
        displacement: json["displacement"],
        drive: json["drive"],
        fuelType: json["fuel_type"],
        highwayMpg: json["highway_mpg"],
        make: json["make"],
        model: json["model"],
        transmission: json["transmission"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "city_mpg": cityMpg,
        "class": carsClass,
        "combination_mpg": combinationMpg,
        "cylinders": cylinders,
        "displacement": displacement,
        "drive": drive,
        "fuel_type": fuelType,
        "highway_mpg": highwayMpg,
        "make": make,
        "model": model,
        "transmission": transmission,
        "year": year,
      };
}
