
import SwiftUI

struct LsForl: Identifiable {
    var id = UUID()
    var ville:String
    var pays:String
    var price:Int
    var image:String
    
}
struct LsFrlRow: View {
    var lsForl: LsForl
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Image(lsForl.image).resizable().frame(minWidth: 0, idealWidth: 150, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 150, alignment: .center).cornerRadius(15.0)
                Text(lsForl.pays).foregroundColor(.gray)
                HStack{
                    Text(lsForl.ville).bold()
                    Spacer()
                    Text("a partir de \(lsForl.price)€ par adulte").bold().font(.caption).padding(5)
                }
                
                VStack(alignment: .trailing){
                    
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
            }
        }
    }
}



struct premierePage: View {
    let formules = [
        LsForl(ville: "marseille", pays: "france", price: 69, image: "ch3"),
        LsForl(ville: "erevan", pays: "armenie", price: 69, image: "ch1"),
        LsForl(ville: "hamsterdam", pays: "pays-bas", price: 69, image: "ch2"),
        LsForl(ville: "disneyland", pays: "paris", price: 69, image: "dsy1")
    ]
    
    var body: some View {
        NavigationView {
            
            VStack {
                    Text("TripCrew")
                        .font(.title)
                        .foregroundColor(.blue)
     
              
                HStack(spacing: 20) {
                    
                    NavigationLink(destination: filtrehebergelment()) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 30))
                            .padding(30)
                    }
                   
                    
                    NavigationLink(destination: filtre_vol()) {
                        Image(systemName: "airplane")
                            .font(.system(size: 30))
                            .padding(30)
                            
                    }
                    NavigationLink(destination: filtreactivite()) {
                        Image(systemName: "paintpalette.fill")
                            .font(.system(size: 30))
                            .padding(30)
                            
                    }
                }
                
                HStack {
                    
                    NavigationLink(destination: resultPage_()) {
                        Text("Chercher formules")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .frame(width: 300, height: 50, alignment: .center)
                            .background(Color.blue)
                            .cornerRadius(5)
                            .padding()
                    }
                    
                }
                VStack(alignment: .leading) {
                    List(formules) {
                        lsForl in
                        LsFrlRow(lsForl: lsForl)
                        
                    }
                }
            }
        }
    }
}

struct premierePage_Previews: PreviewProvider {
    static var previews: some View {
        premierePage()
    }
}
