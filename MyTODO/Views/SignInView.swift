import SwiftUI

struct SignInView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        Text("")
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .environmentObject(Model())
    }
}
