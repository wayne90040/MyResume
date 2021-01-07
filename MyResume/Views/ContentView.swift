//
//  ContentView.swift
//  MyResume
//
//  Created by Wei Lun Hsu on 2020/9/3.
//  Copyright © 2020 Wei Lun Hsu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ State private var selectedTab = 2
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            ExperienceUIView()
                .tabItem{
                    Text("Experience").multilineTextAlignment(.center)
                    Image(systemName: "briefcase.fill")
            }.tag(1)
            
            ProfileUIView()
                .tabItem{
                    Text("Profile").multilineTextAlignment(.center)
                    Image(systemName: "person.circle")
            }.tag(2)
            
            SkillsUIView()
                .tabItem{
                    Text("Skills").multilineTextAlignment(.center)
                    Image(systemName: "hammer.fill")
            }.tag(3)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
