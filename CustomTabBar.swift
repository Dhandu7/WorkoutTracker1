//
//  CustomTabBar.swift
//  Workout App
//
//  Created by Aaryan Dhand on 2023-05-03.
//

import SwiftUI

enum Tabs: Int {
    case history = 0
    case exercises = 1
    case steps = 2
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        ZStack{
            Capsule().padding(.horizontal, 10.0).frame(height:82).foregroundColor(Color(.secondarySystemBackground)).shadow(radius: 2)
            
            HStack (alignment: .center){
                Spacer()
                Button {
                    //switch to history
                    selectedTab = .history
                } label: {
                    
                    CustomTabBarButton(buttonText: "History", imageName: "calendar.badge.clock", isActive: selectedTab == .history)
                    
                }.tint(Color("icons"))
                
                Spacer()
                Button {
                    //pull up camera
                } label: {
                    VStack (alignment: .center, spacing: 4){
                        Image(systemName: "plus.circle.fill").resizable().scaledToFit().frame(width:36,height: 36)
                        Text("Workout").bold()
                    }
                }.tint(Color("icons-secondary"))
                Spacer()
                
                Button {
                    // pull up exercise list
                    selectedTab = .exercises
                } label: {
                    
                    CustomTabBarButton(buttonText: "Excersises", imageName: "figure.strengthtraining.traditional", isActive: selectedTab == .exercises)
                    
                }.tint(Color("icons"))
                Spacer()
                
                Button {
                    // pull up exercise list
                    selectedTab = .steps
                } label: {
                    
                    CustomTabBarButton(buttonText: "Steps", imageName: "figure.walk.motion", isActive: selectedTab == .steps)
                    
                }.tint(Color("icons"))
                
                Spacer()
            }.frame(height: 82)
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.exercises))
    }
}
