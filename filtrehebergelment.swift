

import SwiftUI

struct filtrehebergelment: View {
    @State private var Appart = false
    @State private var Hotel = false
    @State private var Auberge = false
    @State private var Chambre  = false
    @State private var numsenior = 0
    @State private var numadulte = 0
    @State private var numjeune = 0
    @State private var numenfant = 0
    @State private var numbebe = 0
    @State private var numanimal = 0
    @State private var budgetmin :String = ""
    @State private var budgetmax :String = ""
    @State private var debuthebergement = Date()
    @State private var finthebergement = Date()
    @State private var value = 0
    var body: some View {
        
            Form{
                
                
                Section {
                    HStack{
                        Image(systemName: "house.fill")
                        Text("Type ")
                            .bold()
                    }
                    
                    Toggle("Appartement", isOn: $Appart)
                    Toggle("Hotel", isOn: $Hotel)
                    
                    Toggle("Auberge de jeunesse", isOn: $Auberge)
                    Toggle("B/B Chambre d'hote", isOn: $Chambre)
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
                        "Debut",
                        selection: $debuthebergement,
                        displayedComponents: [.date]
                    )
                    DatePicker(
                        "Fin",
                        selection: $finthebergement,
                        displayedComponents: [.date]
                    )
                }
                Section {
                    HStack {
                        Image(systemName:"person.fill.questionmark")
                        
                        Text("Voyageur(s)")
                            .bold()
                    }
                    Stepper(value: $numsenior   , in: 0...40) {
                        Text("Senior \(numsenior)")
                    }
                    Stepper(value: $numadulte, in: 0...40) {
                        Text("Adulte \(numadulte)")
                        
                    }
                    Stepper(value: $numjeune, in: 0...40) {
                        Text("Jeune \(numjeune)")
                        
                    }
                    Stepper(value: $numenfant, in: 0...40) {
                        Text("Enfant \(numenfant)")
                    }
                    Stepper(value: $numbebe, in: 0...40) {
                        Text("Bebe \(numbebe)")
                    }
                    Stepper(value: $numanimal, in: 0...40) {
                        Text("Animal \(numanimal)")
                    }
                }
                
                
                
            }
            .navigationBarTitle(Text("Hebergement"),displayMode: .inline)
            
            
            .navigationBarItems (trailing:Button(action: {
                Appart = false
                Hotel = false
                Auberge = false
                Chambre  = false
                budgetmin = ""
                budgetmax = ""
                numsenior = 0
                numadulte = 0
                numjeune = 0
                numenfant = 0
                numbebe = 0
                numanimal = 0
                
                
            }, label: {
                Text("Effacer")
                
            }))
            
            
        }
}
struct filtrehebergelment_Previews: PreviewProvider {
    static var previews: some View {
        filtrehebergelment()
    }
}
