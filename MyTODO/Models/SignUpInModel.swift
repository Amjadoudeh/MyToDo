import Combine
import SwiftUI

class Model: ObservableObject {
    @Published var selectedModal: Modal = .signIn
    
}

enum Modal: String {
    case signIn
    case signUp
}
