//This playground is about Swift switch cases with Enums

enum Countries: String {
    case Bangladesh = "Bangladesh"
    case India = "India"
    case USA = "United States of America"
    case UK = "United Kingdom"
    case Canada = "Canada"
}

enum Capitals: String {
    case Bangladesh = "Dhaka"
    case India = "New Delhi"
    case USA = "Washington DC"
    case UK = "London"
    case Canada = "Ottawa"
}

var countryName = Countries.Bangladesh

switch countryName {

case .Bangladesh:
    print("The Capital is \(Capitals.Bangladesh.rawValue)")
case .India:
    print("The Capital is \(Capitals.India.rawValue)")
case .USA:
    print("The Capital is \(Capitals.USA.rawValue)")
case .UK:
    print("The Capital is \(Capitals.UK.rawValue)")
case .Canada:
    print("The Capital is \(Capitals.Canada.rawValue)")
}

