import SwiftUI

struct MainView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        ZStack {
                    Color.clear.background(.regularMaterial)
                        .ignoresSafeArea()
                    
                    Group {
                        switch model.selectedModal {
                        case .signIn: SignInView()
                                .padding(.top, 50)
                                .transition(AnyTransition.scale.animation(.easeInOut(duration: 1.6)))
                            
                        case .signUp: SignUpView()
                                .padding(.top, 50)
                                .transition(AnyTransition.scale.animation(.easeInOut(duration: 1.4)))
                        }
                    }
                    
                }
                .ignoresSafeArea(.all)
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Model())
    }
}
