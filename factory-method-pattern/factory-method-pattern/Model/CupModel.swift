import Foundation

// Create cup superclass
class Cup {
    // Placing cup sizes into enum for type safety
    enum CupSize: String {
        case litre = "Litre"
        case halfLitre = "Half litre"
        case pint = "Pint"
        case halfPint = "Half pint"
    }
    
    let id: Int
    let isGlassEmpty: Bool
    let cupSize: CupSize
    
    // initialise the cup
    init(id: Int,
         isGlassEmpty: Bool,
         cupSize: CupSize) {
        self.id = id
        self.isGlassEmpty = isGlassEmpty
        self.cupSize = cupSize
    }
    
    // Create a class method for cup superclass
    func describeCup() {
        if isGlassEmpty {
            print("This cup is a \(cupSize.rawValue) that is empty")
        } else {
            print("This cup is a \(cupSize.rawValue) that is not empty")
        }
    }
}

// Create subclass of cup for plastic
class PlasticCup: Cup {
    let isBendy: Bool
    
    // Include all parameters within init
    init(isBendy: Bool,
         id: Int,
         isGlassEmpty: Bool,
         cupSize: CupSize) {
        self.isBendy = isBendy
        super.init(id: id, isGlassEmpty: isGlassEmpty, cupSize: cupSize)
    }
    
    override func describeCup() {
        print("This is a plastic cup")
    }
}

// Create subclass of cup for glass
class GlassCup: Cup {
    let isClear: Bool
    
    init(isClear: Bool,
         id: Int,
         isGlassEmpty: Bool,
         cupSize: CupSize) {
        self.isClear = isClear
        super.init(id: id, isGlassEmpty: isGlassEmpty, cupSize: cupSize)
    }
    
    override func describeCup() {
        print("This is a glass cup")
    }
}
