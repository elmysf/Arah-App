//
//  TabBarView.swift
//  Arah
//
//  Created by Sufiandy Elmy on 23/11/23.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0

       var body: some View {
           TabView(selection: $selectedTab) {
               // Tab 1
               ArahHome()
                   .tabItem {
                       Image(systemName: "clock.badge.fill")
                       Text("Prayer Time")
                   }
                   .tag(0)

               // Tab 2
               Text("Qibla")
                   .tabItem {
                       Image("Salah")
                       Text("Qibla")
                   }
                   .tag(1)

               // Tab 3
               Text("Qur'an")
                   .tabItem {
                       Image("setting")
                       Text("Setting")
                   }
                   .tag(2)
           }
           .accentColor(Color("color"))
    }
}

#Preview {
    TabBarView()
        .preferredColorScheme(.dark)
}
