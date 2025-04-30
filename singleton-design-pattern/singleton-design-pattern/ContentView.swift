import SwiftUI

struct ContentView: View {
    // Pass shared app state to view model
    @StateObject private var viewModel = DummyViewModel(appState: AppState.shared)
    
    private var sectionSelected: String {
        viewModel.displaySectionSelected()
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Singleton Pattern")
                    .font(.largeTitle)
                    .padding(.bottom)
                
                Text("**What is a Singleton pattern?**")
                Text("A Singleton pattern is when you only have one object of a class which is globally accessible.")
                Text("This typically involves a private constructor and a public method that allows for lazy creation of the object.")
                    .padding(.bottom)
                
                Text("**Use cases for Singleton pattern:**")
                Text("- App state/configuration management")
                Text("- Local storage management")
                Text("- Database connection")
                Text("- Authentication management")
                Text("- In app purchase management")
                    .padding(.bottom)
                
                Text("**Testing Singleton for app state**")
                Text("Section selected: \(sectionSelected)")

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
