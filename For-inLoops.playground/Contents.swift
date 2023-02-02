//This playground demonstrates the for-in loop in Swift

// access items of an array
let planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]

for planet in planets {
    print(planet)
}

print("New planet list:")
// remove Pluto from planets array
for planet in planets where planet != "Pluto"{
  print(planet)
}
