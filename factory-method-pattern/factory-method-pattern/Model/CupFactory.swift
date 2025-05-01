import Foundation

enum CupType {
    case glass(isClear: Bool)
    case plastic(isBendy: Bool)
}

final class CupFactory {
    // Method creates concrete class when called
    static func createCup(id: Int,
                          isGlassEmpty: Bool,
                          cupSize: Cup.CupSize,
                          type: CupType) -> Cup {
        switch type {
        case .glass(let isClear):
            return GlassCup(isClear: isClear, id: id, isGlassEmpty: isGlassEmpty, cupSize: cupSize)
        case .plastic(let isBendy):
            return PlasticCup(isBendy: isBendy, id: id, isGlassEmpty: isGlassEmpty, cupSize: cupSize)
        }
    }
}

