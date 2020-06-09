//
//  HikeDtails.swift
//  First App Tv
//
//  Created by islam Elshazly on 09/06/2020.
//  Copyright © 2020 Islam Elshazly. All rights reserved.
//

import SwiftUI

struct HikeDtails: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 400, height: 400, alignment: .center)
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
            
            Text(hike.name)
        }
    }
}

struct HikeDtails_Previews: PreviewProvider {
    static var previews: some View {
        HikeDtails(hike: Hike(name: "ISlam", imageURL: "1", miles: 10))
    }
}
