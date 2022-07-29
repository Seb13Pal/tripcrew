
import SwiftUI

struct filtreactivite: View {
    @State var Sportive = false
    @State var Culturelle = false
    @State var Nature = false
    @State var Attraction = false
    @State var budgetmin :String = ""
    @State var budgetmax :String = ""
    @State var persmin : String = ""
    @State var persmax : String = ""
    @State var debutactivite = Date()
    @State var finactivite = Date()
    @State var numbervoyageur = 0
    @State var numbervoyageur2 = 0
    @State var numbervoyageur3 = 0
    @State var numbervoyageur4 = 0
    @State var numbervoyageur5 = 0
    @State var mer = false
    @State var montagne = false
    
    
    
    var body: some View {
        
        Form{
            Section {
                HStack{
                    Image(systemName: "paintpalette.fill")
                    Text("Type")
                        .bold()
                }
                Toggle("Sportive", isOn: $Sportive)
                Toggle("Culturelle", isOn: $Culturelle)
                Toggle("Parc D'Attraction", isOn: $Attraction)
                Toggle("Nature", isOn: $Nature)
                if Nature {
                    Toggle("Mer", isOn: $mer).font(.subheadline)
                    Toggle("Montagne", isOn: $montagne).font(.subheadline)
                }
            }
            
            Section {
                HStack{
                    Image(systemName: "eurosign.circle")
                    Text("Budget")
                        .bold()
                }
                
                
                HStack {
                    Text(" Min")
                        .font(.subheadline)
                        .padding()
                    TextField  (("Min"), text:$budgetmin)
                        .padding()
                    Text("Max")
                        .font(.subheadline)
                        .padding()
                    TextField  (("Max"), text:$budgetmax)
                        .padding()
                    
                }
                
            }
            Section{
                HStack{
                    Image(systemName:"calendar.badge.clock")
                    Text("Date").bold()
                }
                
                DatePicker(
                    "Début",
                    selection: $debutactivite,
                    displayedComponents: [.date]
                )
                DatePicker(
                    "Fin",
                    selection: $finactivite,
                    displayedComponents: [.date]
                )
            }
            
            Section{
                HStack {
                    Image(systemName:"person.fill.questionmark")
                    
                    Text("Voyageur(s)")
                        .bold()
                }
                Stepper(value: $numbervoyageur, label: {
                    Text(" Séniors: \(numbervoyageur)")
                })
                
                Stepper(value: $numbervoyageur2, label: {
                    Text("Adultes : \(numbervoyageur2)")
                })
                Stepper(value: $numbervoyageur3, label: {
                    Text("Jeunes : \(numbervoyageur3)")
                    
                })
                ;Stepper(value: $numbervoyageur4, label: {
                    Text("Enfants : \(numbervoyageur4)")
                    
                });Stepper(value: $numbervoyageur5, label: {
                    Text("Bébés : \(numbervoyageur5)")
                })
            }
        }
        
        .navigationBarTitle(Text("Activite"),displayMode: .inline)
        
        .navigationBarItems (trailing:Button(action: {
            Sportive = false
            Culturelle = false
            Nature = false
            Attraction = false
            budgetmin = ""
            budgetmax = ""
            
        }, label: {
            Text("Effacer")
            
        }))
    }
}

struct filtreactivite_Previews: PreviewProvider {
    static var previews: some View {
        filtreactivite()
    }
}
