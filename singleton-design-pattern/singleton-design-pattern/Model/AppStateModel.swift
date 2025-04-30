import Foundation

// This class implements a Singleton pattern
class AppState {
    var isDarkModeEnabled: Bool = false
    var isUserLoggedin: Bool = false
    var appTheme: AppTheme = .default
    var tabSelected: TabSelection = .search
    
    // public access point to singleton - static let is lazily initialised
    // static let is the standard way to handle singletons in swift
    static let shared = AppState()
    
    // create a private initialiser
    private init() { }
}

//MARK: - Supporting types
enum AppTheme {
    case `default`
    case dark
    case light
    case custom(String)
}

enum TabSelection {
    case home
    case search
    case profile
    case settings
}
