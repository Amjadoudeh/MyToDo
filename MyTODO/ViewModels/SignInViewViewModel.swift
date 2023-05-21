import Foundation

class SignInViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init () {
        
    }
    
    func signIn() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        print("called")
    }
    
    func validate() {
        
    }
    
}
