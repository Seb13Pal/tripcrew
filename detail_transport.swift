

import SwiftUI

struct detail_transport: View {
    
    var body: some View {
        
        NavigationView {
            
            Form{
                Section {
                    VStack
                    {
                        
                        HStack{
                            Image( "SNCF" ) .resizable()
                                .frame(width: 40, height: 40, alignment: .center)
                            
                        }
                        Text("3h")
                            .foregroundColor(.blue)
                            .bold()
                        Spacer()
                        Text("45€")
                            .bold()
                            .foregroundColor(.red)
                        HStack (alignment: .center, spacing: 200)
                        {
                            Text("9h30")
                                .bold()
                                .foregroundColor(.blue)
                            Text ("12H30")
                                .bold()
                                .foregroundColor(.blue)
                            
                            
                        }
                        HStack
                        {
                            Text("GDL")
                            Rectangle()
                                .frame(width: 200, height: 10, alignment: .center)
                            Text("MRS")
                            
                        }
                        Text("Class: economique")
                            .foregroundColor(.blue)
                            .bold()
                    }
                    
                }
                
                Section {
                    VStack
                    {
                        
                        HStack{
                            Image( "BlablaCar" ) .resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                            
                        }
                        Text("9h")
                            .foregroundColor(.blue)
                            .bold()
                        Spacer()
                        Text("40€")
                            .bold()
                            .foregroundColor(.red)
                        HStack (alignment: .center, spacing: 200)
                        {
                            Text("7h30")
                                .bold()
                                .foregroundColor(.blue)
                            Text ("16H30")
                                .bold()
                                .foregroundColor(.blue)
                        }
                        HStack
                        {
                            Text("GDL")
                            Rectangle()
                                .frame(width: 200, height: 10, alignment: .center)
                            Text("MRS")
                            
                        }
                        
                    }
                    
                }
                Section {
                    VStack
                    {
                        
                        HStack{
                            Image( "Air France" ) .resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                            
                        }
                        Text("1h30")
                            .foregroundColor(.blue)
                            .bold()
                        Spacer()
                        Text("50€")
                            .bold()
                            .foregroundColor(.red)
                        HStack (alignment: .center, spacing: 200)
                        {
                            Text("10h")
                                .bold()
                                .foregroundColor(.blue)
                            Text ("11H30")
                                .bold()
                                .foregroundColor(.blue)
                        }
                        HStack
                        {
                            Text("GDL")
                            Rectangle()
                                .frame(width: 200, height: 10, alignment: .center)
                            Text("MRS")
                            
                        }
                        Text("Class: economique")
                            .foregroundColor(.blue)
                            .bold()
                    }
                }
            }
            
            .navigationBarTitle(Text("Detail Transport"),displayMode: .inline)
            
        }
    }
}

struct detail_transport_Previews: PreviewProvider {
    static var previews: some View {
        detail_transport()
    }
}
