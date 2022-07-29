
import SwiftUI

struct filtre_vol: View {
    @State private var typeVol = 1
    @State private var depart: String = ""
    @State private var pour: String = ""
    @State private var datedepart: String = ""
    @State private var dateretour: String = ""
    @State var budgetmin :String = ""
    @State var budgetmax :String = ""
    @State private var voyageurs: String = ""
    @State private var date = Date()
    @State private var date1 = Date()
    @State private var nsenior = 0
    @State private var nadulte = 0
    @State private var nenfant = 0
    @State private var njeune = 0
    @State private var nbebe = 0
    @State private var nanimal = 0
    var body: some View {
        
            Form{
                Picker(selection: $typeVol, label: Text("Type de vol"), content: {
                    Text("Aller-retour").tag(1)
                    Text("Aller simple").tag(2)
                }).pickerStyle(SegmentedPickerStyle())
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
                
                
                List {
                    Section {
                        HStack{
                            Image(systemName: "airplane")
                            Text("Destination ").bold()
                            
                        }
                        HStack {
                            Text("Vol au départ de")
                                .foregroundColor(.black)
                        }
                        TextField (("Ville ou aeroport"), text: $depart)
                        
                        
                        
                        HStack {
                            
                            Button (action: {}, label: {
                                Text("Vol pour")
                                    .foregroundColor(.black)
                            })
                        }
                        TextField (("Ville ou aeroport"), text: $pour)
                        
                    }
                    Section {
                        
                        HStack {
                            Image(systemName:"calendar.badge.clock")
                            Button (action: {}, label: {
                                Text("Date")
                                    .foregroundColor(.black)
                                    .padding()
                            })
                        }
                        DatePicker(
                            "La date du départ",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                        
                        
                        
                        
                        if (typeVol == 1){
                            DatePicker(
                                " La date du retour",
                                selection: $date1,
                                displayedComponents: [.date]
                            )
                        }
                        
                        
                    }
                    
                    Section {
                        HStack {
                            Image(systemName:"person.fill.questionmark")
                            
                            Text("Voyageur(s)")
                                .bold()
                        }
                        Stepper(value: $nsenior, in: 0...40) {
                            Text("Senior \(nsenior)")
                        }
                        Stepper(value: $nadulte, in: 0...40) {
                            Text("Adulte \(nadulte)")
                            
                        }
                        Stepper(value: $njeune, in: 0...40) {
                            Text("Jeune \(njeune)")
                            
                        }
                        Stepper(value: $nenfant, in: 0...40) {
                            Text("Enfant \(nenfant)")
                        }
                        Stepper(value: $nbebe, in: 0...40) {
                            Text("Bebe \(nbebe)")
                        }
                        Stepper(value: $nanimal, in: 0...40) {
                            Text("Animal \(nanimal)")
                        }
                    }
                    
                    
                    
                }
                
            }
            .navigationBarTitle(Text("Vols"),displayMode:
                                    .inline)
            .navigationBarItems( trailing: Button (action: {
                depart = ""
                pour = ""
                nsenior = 0
                nadulte = 0
                nenfant = 0
                njeune = 0
                nbebe = 0
                nsenior = 0
                nanimal = 0
                
                
            }
            , label: {
                Text ("Effacer")
            }))
        }
}


struct filtre_vol_Previews: PreviewProvider {
    static var previews: some View {
        filtre_vol()
    }
}
