import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var model: Model
    @StateObject var viewModel = SignUpViewViewModel()
    
    var body: some View {
        VStack {
            SignHeaderView(title: "Register Now", subTitle: "get everything listed", rotationAngle: -15, headerBackground: .red, textColor: .white)
            
            Form {
                TextField("Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                SecureField("Password",text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
    //            SignUp_InButton(title: "Sign Up", buttonBackgroundColor: .black, buttonTextColor: .white) { viewModel.signUp() }
            }
        }
        Spacer()
        
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .environmentObject(Model())
    }
}
