
import SwiftUI

struct detailsHebergement: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: detailesActivite()) {
                        Image(systemName: "paintpalette.fill")
                            .font(.system(size: 30))
                            .padding(30)
                            .foregroundColor(.blue)
                    }
                    NavigationLink(destination: detailsHebergement()) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 30))
                            .padding(30)
                            .foregroundColor(.blue)
                    }
                    NavigationLink(destination: detail_transport()) {
                        Image(systemName: "airplane")
                            .font(.system(size: 30))
                            .padding(30)
                            .foregroundColor(.blue)
                    }
                }
                Form{
                    
                    
                    Section {
                        ScrollView(.horizontal) {
                            HStack(spacing: 2) {
                                Image("ch1")
                                Image("ch2")
                                Image("ch3")
                                Image("ch4")
                            }
                        }
                        
                        
                        
                        
                        
                        Text ("101 € \n par nuit \n Comprend les taxes et les frais")
                        VStack{
                            Text("A propos de la chambre")
                                .bold()
                            VStack{
                                
                                HStack (spacing: 55)
                                {
                                    
                                    HStack {
                                        Image(systemName: "bed.double")
                                        Text("Chambre double")
                                    }
                                    
                                    HStack {
                                        Image(systemName: "parkingsign.circle")
                                        Text("parking")
                                    }
                                    
                                }
                                HStack (spacing: 55)
                                {
                                    
                                    HStack {
                                        Image(systemName: "pawprint.fill")
                                        Text("animaux admis")
                                    }
                                    
                                    HStack {
                                        Image(systemName: "wifi")
                                        Text("wifi gratuite")
                                    }
                                    
                                }
                                
                            }
                        }
                        VStack{
                            Text ("Equipements populaires")
                            
                            HStack {
                                
                                VStack {
                                    Image(systemName: "wifi")
                                    
                                    Text("  WiFi\ngratuite")
                                    
                                    
                                }
                                VStack {
                                    
                                    Image(systemName: "parkingsign.circle")
                                    
                                    Text("Parking\ngratuite")
                                    
                                    
                                }
                                VStack {
                                    Image(systemName: "pawprint")
                                    
                                    Text(" Animaux\n  admis")
                                    
                                    
                                }
                                
                                VStack {
                                    Image(systemName: "climatisation")
                                    
                                    Text("Vue sur\n la Seine")
                                    
                                    
                                }
                                
                            }
                        }
                        VStack (spacing:3) {
                            Text ( "Mesures d'hygiène et de sécurité")
                                .bold()
                                .lineSpacing(10.0)
                            Text ("\(Image(systemName: "house")) Nettoyage avec désinfectant\n\(Image(systemName: "house"))Désinfectant pour les mains fourni\n\(Image(systemName: "house"))Distanciation sociale")
                            
                        }
                        VStack{
                            Text("A propos de l'hôtel")
                                .bold()
                            Text("Cet hôtel non-fumeurs abrite un restaurant, un bar / salon et une salle de réunion. L'accès Wi-Fi dans les parties communes est fourni gratuitement. L'ensemble des 49 chambres mettent à votre disposition l'accès Wi-Fi à Internet gratuit, des minibars et des télévisions à écran plat. Des cafetières, de l'eau minérale gratuite et un sèche-cheveux seront aussi disponibles.")
                        }
                        
                        
                        
                        
                    }
                }
                
                
                
                
                
                
                
                
                
                
                
            }
            
        }
        }
    }
    
    struct detailsHebergement_Previews: PreviewProvider {
        static var previews: some View {
            detailsHebergement()
        }
    }
