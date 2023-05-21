import Foundation

class SignInViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init () {
        
    }
    
    func signIn() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please make sure that you filled in all fields"
            return
        }
        print("called")
    }
    
    func validate() {
        
    }
    
}
