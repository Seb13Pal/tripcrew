
import SwiftUI

struct detailesActivite: View {
    var body: some View {
        VStack(alignment: .leading) {
            List() {
                VStack(alignment: .leading) {
                    Section{
                        Text("Disney Land Paris ")
                            .bold()
                            .foregroundColor(.blue)
                            .font(.title)
                        
                        VStack(alignment: .leading) {
                            
                            ScrollView(.horizontal) {
                                HStack(spacing: 2) {
                                    Image("dsy1")
                                    Image("dsy2")
                                    Image("dsy3")
                                    Image("disney")
                                }
                            }
                            
                            VStack(alignment: .leading) {
                                Text("apropos")
                                Text("")
                                HStack {
                                    Image(systemName: "wifi")
                                    Text("Consultez la disponibilité pour voir les heures de début.")
                                }
                                Text("")
                                HStack {
                                    Image(systemName: "wifi")
                                    Text("Accessible aux personnes en fauteuil roulant")
                                }
                                
                                
                                Text("Ce qui pourrait aussi vous plaire...")
                                    .font(.title)
                                ScrollView(.horizontal)
                                {
                                    HStack(spacing: 2) {
                                        VStack{
                                        Image("cata")
                                        Text("Catacombes")
                                        }
                                       
                                        HStack(spacing: 2) {
                                            VStack{
                                            Image("tour")
                                            Text("Tour Eiffel")
                                            }
                                            HStack(spacing: 2) {
                                                VStack{
                                                Image("louvre")
                                                Text("Musée du Louvre")
                                                }
                                    }
                                }
                                    }
                            }
                            }
                        }
                    }
                }
            }
        }    }
}

struct detailesActivite_Previews: PreviewProvider {
    static var previews: some View {
        detailesActivite()
    }
}
