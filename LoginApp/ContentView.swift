
import SwiftUI

struct ContentView: View {
    @State private var name:String="";
    @State private var password:String="";
    var body: some View {
        VStack(spacing:15){
            Spacer()
            Text("Welcome to Northwest")
                .font(.title)
                .foregroundColor(Color.green)
                .bold()
                
            RectangleImage()
                .padding(0.0)
            Spacer()
            HStack{
                Image(systemName: "envelope")
                    .foregroundColor(Color.gray)
                TextField("UserName", text:$name)
                
            }
            .padding(.all,20.0)
            .cornerRadius(6)
            HStack{
                Image(systemName: "lock")
                    .foregroundColor(Color.gray)
                SecureField("Password", text:$password)
                
            }
            .padding(.all,20)
            .cornerRadius(6)
            Spacer()
            Spacer()
            Button(action: {
                let result=self.greetUser(name:self.name,password:self.password)
                print(result)
//                Text(result)
                
            }) {
                
            Text("Login")
                .foregroundColor(Color.white)
                .font(.system(size: 24, weight: .medium))
            }.frame(maxWidth:.infinity)
                .padding(.all)
            .cornerRadius(20)
                .background(Color.red.opacity(0.8))
            
            Spacer()
            
        }
        .padding(.all,10)
        
    
    }
    func greetUser(name: String,password:String)->String{
        return "Hello \(name)"
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
