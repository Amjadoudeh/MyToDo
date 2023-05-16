import FirebaseCore
import SwiftUI

@main
struct MyTODOApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
