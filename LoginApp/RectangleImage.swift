
import SwiftUI


struct RectangleImage: View {
    var body: some View{
        Image("bearcat")
                    .resizable()
                    .clipShape(Rectangle())
                    .aspectRatio(contentMode: .fit)
            .frame(height: nil)
            .cornerRadius(20)
                    .padding(.all)
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View{
        RectangleImage()
    }
    
}


