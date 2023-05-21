import SwiftUI

struct SignInView: View {
    @EnvironmentObject var model: Model
    @StateObject var viewModel = SignInViewViewModel()
    
    var body: some View {
        VStack {
            SignHeaderView(title: "To Do", subTitle: "orgnize your to dos", rotationAngle: 15, headerBackground: .orange, textColor: .white)
            Form {
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password",text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            
                SignButton(title: "Sign In",
                           buttonBackground: .black
                           , textColor: .white
                ) {
                    viewModel.signIn()
                }
                .cornerRadius(5)
            }
            .formStyle(.grouped)
            
            .frame(maxWidth: UIScreen.main.bounds.width)
            .padding()
            Spacer()
            HStack {
                Text("Not a member?")
                    .foregroundColor(.black.opacity(0.7))
                    .font(.subheadline)
                Button(action: {
                    withAnimation {
                        model.selectedModal = .signUp
                    }
                }
                       , label: {
                    Text("Register Now")
                })
            }
        }
        .padding(.bottom, 80)

        }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .environmentObject(Model())
    }
}
