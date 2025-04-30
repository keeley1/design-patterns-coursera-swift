import Foundation

// Conform to observable object so changes to view model data reflect in view
final class DummyViewModel: ObservableObject {
    let appState: AppState
    
    init(appState: AppState) {
        self.appState = appState
    }
    
    func displayTextForLightMode() -> String {
        if !appState.isDarkModeEnabled {
            return "Light mode text"
        } else {
            return ""
        }
    }
    
    func displaySectionSelected() -> String {
        switch appState.tabSelected {
        case .home:
            return "Home"
        case .profile:
            return "Profile"
        case .search:
            return "Search"
        case .settings:
            return "Settings"
        }
    }
}
