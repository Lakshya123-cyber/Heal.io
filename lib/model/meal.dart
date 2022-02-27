class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal(
      {required this.mealTime,
      required this.name,
      required this.imagePath,
      required this.kiloCaloriesBurnt,
      required this.timeTaken,
      required this.preparation,
      required this.ingredients});
}

final meals = [
  Meal(
      mealTime: "BREAKFAST",
      name: "Fruit Granola",
      kiloCaloriesBurnt: "271",
      timeTaken: "10",
      imagePath: "assets/fruit_granola.jpeg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "1/2 cup of raisins",
        "1 tbsp of honey",
      ],
      preparation:
          '''Preheat oven to 400 deg.Blend oats, wheat flakes, sunflower seed, nuts (almonds, walnuts, pecans or combination), sesame seed, oil and honey in large bowl. Transfer to large roasting pan, spreading evenly. Bake until lightly browned at edges, stirring occasionally, about 15 minutes. Let cool completely. Stir in fruit. Store in airtight container.'''),
  Meal(
      mealTime: "DINNER",
      name: "Pesto Pasta",
      kiloCaloriesBurnt: "612",
      timeTaken: "15",
      imagePath: "assets/pesto_pasta.jpeg",
      ingredients: [
        "1 cup pasta",
        "pesto",
        "onions and pepper",
        "100g of cheese",
      ],
      preparation:
          '''Cook pasta in a large pot of boiling water until done. Drain. Meanwhile, heat the oil in a frying pan over medium low heat. Add pesto, onion, and salt and pepper. Cook about five minutes, or until onions are soft. In a large bowl, mix pesto mixture into pasta. Stir in grated cheese. Serve.'''),
  Meal(
      mealTime: "SNACK",
      name: "Keto Snack",
      kiloCaloriesBurnt: "414",
      timeTaken: "16",
      imagePath: "assets/keto_snack.jpeg",
      ingredients: [
        "Some cream cheese",
        "100g of cheddar",
        "50g beef",
      ],
      preparation:
          '''Place the cream cheese and cheddar in a bowl of a sanding mixer fitted with a paddle attachment. Beat the cheeses together until they form a soft, creamy blend. In a skillet over medium heat, cook the beef until brown all over, about 5 minutes. Assemble the poppers by filling each with a spoonful of beef, and then covering with a generous amount of the cheese mix. Place on the baking sheet and bake for 10 minutes, until the filling is bubbling and has some brown spots. Feel free to broil to achieve the desired brownness.'''),
];
