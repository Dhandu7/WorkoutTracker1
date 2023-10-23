//
//  ContentView.swift
//  Workout App
//
//  Created by Aaryan Dhand on 2023-05-01.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var selectedTab: Tabs = .exercises
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        let currentDate = Date()
        
        VStack{
            HStack{
                Text(currentDate.formatted(.dateTime.month(.wide).day().year())).bold().font(.caption).padding(.top, -325.0).padding(.leading,10).foregroundColor(.gray)
                NavigationView{
                    NavigationLink {
                        Settings()
                    } label: {
                        Image(systemName:"gearshape.fill").resizable().scaledToFit().frame(width:36,height: 36)
                    }.padding([.top, .trailing], -340.0).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .padding(.leading, 200.0)
            }
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
            }
            
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
