import SwiftUI

struct SignButton: View {
    let title: String
    let buttonBackground: Color
    let textColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(buttonBackground)
                
                
                Text(title)
                    .foregroundColor(textColor)
                    .bold()
            }
        }
    }
}

struct SignButton_Previews: PreviewProvider {
    static var previews: some View {
        SignButton(title: "Sign In", buttonBackground: .blue, textColor: .white) {}
    }
}
