//
//  ContentView.swift
//  First App Tv
//
//  Created by islam Elshazly on 03/06/2020.
//  Copyright © 2020 Islam Elshazly. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDtails(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
        }.navigationBarTitle("Hikings")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HikeCell: View {
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(16)
            VStack (alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f",hike.miles))
            }
        }
    }
}
