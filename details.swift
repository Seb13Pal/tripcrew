//
//  details.swift
//  tripcrew
//
//  Created by santourian on 20/09/2021.
//

import SwiftUI

struct details: View {
    var body: some View {
        NavigationView {
        HStack {

            NavigationLink(destination: detailesActivite()) {
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 30))
                .padding(30)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            NavigationLink(destination: detailsHebergement()) {
            Image(systemName: "house.fill")
                .font(.system(size: 30))
                .padding(30)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }}
            
        }
 
}


struct details_Previews: PreviewProvider {
    static var previews: some View {
        details()
    }
}}
