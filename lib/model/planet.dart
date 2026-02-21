class Planet {
  final String name; // One-word name of the planet
  final String title; // Full title
  final String imageAsset;
  final String modelAsset; // 3D model path
  final String description;
  final String distanceFromSunKm;
  final String lengthOfDayHours;
  final String orbitalPeriodYears;
  final String radiusKm;
  final String massKg;
  final String gravityMs2;
  final String surfaceAreaKm2;

  const Planet({
    required this.name,
    required this.title,
    required this.imageAsset,
    required this.modelAsset,
    required this.description,
    required this.distanceFromSunKm,
    required this.lengthOfDayHours,
    required this.orbitalPeriodYears,
    required this.radiusKm,
    required this.massKg,
    required this.gravityMs2,
    required this.surfaceAreaKm2,
  });

  static List<Planet> planets = [

    Planet(
      name: "Sun",
      title: "The Sun: Our Solar System's Star",
      imageAsset: "assets/images/sun.png",
      modelAsset: "assets/models/sun.glb",
      description:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. "
          "Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. "
          "The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distanceFromSunKm: "0",
      lengthOfDayHours: "0",
      orbitalPeriodYears: "0",
      radiusKm: "695,700",
      massKg: "1.989 × 10³⁰",
      gravityMs2: "274",
      surfaceAreaKm2: "6.09 × 10¹²",
    ),

    Planet(
      name: "Mercury",
      title: "Mercury: The Closest Planet",
      imageAsset: "assets/images/mercury.png",
      modelAsset: "assets/models/mercury.glb",
      description:
      "Mercury is the smallest planet in our solar system and the closest to the Sun. "
          "It has a heavily cratered surface and almost no atmosphere, causing extreme temperature variations between day and night.",
      distanceFromSunKm: "57,909,227",
      lengthOfDayHours: "1,407.60",
      orbitalPeriodYears: "0.24",
      radiusKm: "2,439.70",
      massKg: "3.301 × 10²³",
      gravityMs2: "3.7",
      surfaceAreaKm2: "7.48 × 10⁷",
    ),

    Planet(
      name: "Venus",
      title: "Venus: Earth's Toxic Twin",
      imageAsset: "assets/images/venus.png",
      modelAsset: "assets/models/venus.glb",
      description:
      "Venus is often referred to as Earth's twin due to its similar size and composition. "
          "However, its thick carbon dioxide atmosphere traps heat, making it the hottest planet in our solar system. "
          "Its runaway greenhouse effect creates a hostile surface environment.",
      distanceFromSunKm: "108,209,072",
      lengthOfDayHours: "5,832.20",
      orbitalPeriodYears: "0.62",
      radiusKm: "6,051.80",
      massKg: "4.867 × 10²⁴",
      gravityMs2: "8.87",
      surfaceAreaKm2: "4.60 × 10⁸",
    ),

    Planet(
      name: "Earth",
      title: "Earth: Our Blue Marble",
      imageAsset: "assets/images/earth.png",
      modelAsset: "assets/models/earth.glb",
      description:
      "Earth is the only known planet that supports life. "
          "Liquid water, a protective atmosphere, and a suitable distance from the Sun create ideal conditions for complex organisms. "
          "Its magnetic field protects it from harmful solar radiation.",
      distanceFromSunKm: "149,598,026",
      lengthOfDayHours: "23.93",
      orbitalPeriodYears: "1",
      radiusKm: "6,371",
      massKg: "5.972 × 10²⁴",
      gravityMs2: "9.81",
      surfaceAreaKm2: "5.10 × 10⁸",
    ),

    Planet(
      name: "Mars",
      title: "Mars: The Red Planet",
      imageAsset: "assets/images/mars.png",
      modelAsset: "assets/models/mars.glb",
      description:
      "Mars is a cold desert world with a thin atmosphere. "
          "It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity. "
          "NASA's Perseverance rover is searching for signs of ancient microbial life.",
      distanceFromSunKm: "227,943,824",
      lengthOfDayHours: "24.62",
      orbitalPeriodYears: "1.88",
      radiusKm: "3,389.50",
      massKg: "6.39 × 10²³",
      gravityMs2: "3.71",
      surfaceAreaKm2: "1.45 × 10⁸",
    ),

    Planet(
      name: "Jupiter",
      title: "Jupiter: The Gas Giant",
      imageAsset: "assets/images/jupiter.png",
      modelAsset: "assets/models/jupiter.glb",
      description:
      "Jupiter is the largest planet in our solar system. "
          "Its Great Red Spot is a massive storm that has raged for centuries. "
          "It has a powerful magnetic field and many moons, including Europa.",
      distanceFromSunKm: "778,547,669",
      lengthOfDayHours: "9.92",
      orbitalPeriodYears: "11.86",
      radiusKm: "69,911",
      massKg: "1.898 × 10²⁷",
      gravityMs2: "24.79",
      surfaceAreaKm2: "6.21 × 10¹⁵",
    ),

    Planet(
      name: "Saturn",
      title: "Saturn: The Ringed Planet",
      imageAsset: "assets/images/saturn.png",
      modelAsset: "assets/models/saturn.glb",
      description:
      "Saturn is famous for its stunning ring system made of ice and rock particles. "
          "Its largest moon, Titan, has a thick atmosphere and liquid lakes.",
      distanceFromSunKm: "1,426,666,422",
      lengthOfDayHours: "10.66",
      orbitalPeriodYears: "29.46",
      radiusKm: "58,232",
      massKg: "5.683 × 10²⁶",
      gravityMs2: "10.44",
      surfaceAreaKm2: "4.27 × 10¹⁵",
    ),

    Planet(
      name: "Uranus",
      title: "Uranus: The Tilted Planet",
      imageAsset: "assets/images/uranus.png",
      modelAsset: "assets/models/uranus.glb",
      description:
      "Uranus is an ice giant with an extreme axial tilt, causing dramatic seasonal changes. "
          "Its pale blue color comes from methane in its atmosphere.",
      distanceFromSunKm: "2,870,990,000",
      lengthOfDayHours: "17.24",
      orbitalPeriodYears: "84.01",
      radiusKm: "25,362",
      massKg: "8.681 × 10²⁵",
      gravityMs2: "8.69",
      surfaceAreaKm2: "8.1 × 10¹⁵",
    ),

    Planet(
      name: "Neptune",
      title: "Neptune: The Distant World",
      imageAsset: "assets/images/neptune.png",
      modelAsset: "assets/models/neptune.glb",
      description:
      "Neptune is the farthest planet from the Sun. "
          "It is a deep blue ice giant with powerful winds and storms. "
          "Its moon Triton orbits in a retrograde direction.",
      distanceFromSunKm: "4,498,252,900",
      lengthOfDayHours: "16.11",
      orbitalPeriodYears: "164.8",
      radiusKm: "24,622",
      massKg: "1.024 × 10²⁶",
      gravityMs2: "11.15",
      surfaceAreaKm2: "7.65 × 10¹⁵",
    ),
  ];

}
