//
//  ContentView.swift
//  TabBarSwiftUI
//
//  Created by Iurie Guzun on 2020-11-19.
//  Copyright © 2020 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProspectsView()
            .tabItem {
                Image(systemName: "person.3")
                Text("Everybody")
            ProspectsView()
            .tabItem {
                Image(systemName: "person.3")
                Text("Contacted")
            }
            ProspectsView()
            .tabItem {
               Image(systemName: "questionMark.diamond")
               Text("Uncontacted")
           }
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
