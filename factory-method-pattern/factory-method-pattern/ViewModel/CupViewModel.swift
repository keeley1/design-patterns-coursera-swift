import Foundation

final class CupViewModel {
    // Define a method to create a cup using the factory
    func createCup() {
        // Pass in data to create a
        let cup = CupFactory.createCup(id: 1,
                                       isGlassEmpty: true,
                                       cupSize: .litre,
                                       type: .glass(isClear: false))
        // Factory should know to create a "glass cup" object
        print("Cup details: ", cup)
    }
}
