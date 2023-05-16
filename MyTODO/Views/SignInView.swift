import SwiftUI

struct SignInView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack {
            SignHeaderView(title: "To Do", subTitle: "orgnize your to dos", rotationAngle: 15, headerBackground: .orange, textColor: .white)
            Spacer()
        }
        
    }
    
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .environmentObject(Model())
    }
}
