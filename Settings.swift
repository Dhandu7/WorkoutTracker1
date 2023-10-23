//
//  History.swift
//  Workout App
//
//  Created by Aaryan Dhand on 2023-05-04.
//

import SwiftUI

struct Settings: View {
    let colors = [Color(.lightGray), Color(.darkGray)]
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
            VStack{
                Text("this is the settings menu")
                Image(systemName: "gearshape.fill").resizable().scaledToFit().frame(width: 100, height: 100)
            }.foregroundColor(.blue)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
