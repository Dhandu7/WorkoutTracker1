//
//  CustomTabBarButton.swift
//  Workout App
//
//  Created by Aaryan Dhand on 2023-05-03.
//

import SwiftUI

struct CustomTabBarButton: View {
    
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    
    var body: some View {
        
        GeometryReader{ geo in
            
            if isActive {
                Rectangle().foregroundColor(Color("icons-secondary")).frame(width: geo.size.width/2, height: 4).padding(.leading, geo.size.width/4)
            }
            
            VStack (alignment: .center, spacing: 4){
                Image(systemName: imageName).resizable().scaledToFit().frame(width:24,height: 24)
                Text(buttonText).bold()
            }.frame(width: geo.size.width,height: geo.size.height)
        }
    }
}

struct CustomTabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarButton(buttonText: "Excercises", imageName: "figure.strengthtraining.traditional", isActive: true)
    }
}
