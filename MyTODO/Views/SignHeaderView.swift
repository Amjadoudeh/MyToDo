import SwiftUI

struct SignHeaderView: View {
    let title: String
    let subTitle: String
    let rotationAngle: Double
    let headerBackground: Color
    let textColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(headerBackground)
                .rotationEffect(Angle(degrees: rotationAngle))
                .frame(width: UIScreen.main.bounds.width , height: 350)
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(textColor)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(textColor)
                    
                
            }
            .padding(.top, 80)
            
        }
        
        .offset(y: -150)
    }
}

struct SignHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SignHeaderView(title: "Title", subTitle: "SubTitle", rotationAngle: 15, headerBackground: .red, textColor: .white)
    }
}
