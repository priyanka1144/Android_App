class Weather {
  final String cityName;
  final String description;
  final int humidity;
  final int sunrise;
  final int sunset;
  final double temperature;
  final double windSpeed;

  Weather({
    required this.cityName,
    required this.description,
    required this.humidity,
    required this.sunrise,
    required this.sunset,
    required this.temperature,
    required this.windSpeed,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      description: json['weather'][0]['description'],
      humidity: json['main']['humidity'],
      sunrise: json['sys']['sunrise'],
      sunset: json['sys']['sunset'],
      temperature: (json['main']['temp'] - 273.15),
      windSpeed: json['wind']['speed'].toDouble(),
    );
  }
}
