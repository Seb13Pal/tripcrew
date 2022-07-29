
import SwiftUI

struct Voyage:Identifiable {
    var id = UUID()
    var ville:String
    var pays:String
    var price:Int
    var image:String
}
struct VolageRow:View {
    var voyagedata:Voyage
   
    var body: some View{
        
        NavigationLink(destination: detailsHebergement()){
            HStack{
                VStack(alignment: .leading){
                    Image(voyagedata.image).resizable().frame(minWidth: 0, idealWidth: 150, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 150, alignment: .center).cornerRadius(15.0)
                    Text(voyagedata.pays).foregroundColor(.gray)
                    HStack{
                        Text(voyagedata.ville).bold()
                        Spacer()
                        Text("a partir de \(voyagedata.price)€ par adulte").bold().font(.caption).padding(5)
                    }
                    
                    VStack(alignment: .trailing){
                        
                    }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                }
            }
        }
    }
}

struct resultPage_: View {
    
    let voyages:[Voyage] = [
        Voyage(ville: "Paris", pays: "France", price: 163, image: "paris"),
        Voyage(ville: "Madrid", pays: "Espagne", price: 213, image: "madrid"),
        Voyage(ville: "Lome", pays: "Togo", price: 453, image: "lome"),
        
        
    ]
    
    var body: some View {
//        NavigationView{
            
            List(voyages){liste in
                VolageRow(voyagedata: liste)
            }.buttonStyle(PlainButtonStyle())
            .navigationBarTitle("\(voyages.count) Resultat de recherche", displayMode: .inline)
        }
//    }
}

struct resultPage_Previews: PreviewProvider {
    static var previews: some View {
        resultPage_()
    }
}
