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
            ProspectsView(filter:  .none)
            .tabItem {
                Image(systemName: "person.3")
                Text("Everybody")
            }
            ProspectsView(filter: .contacted)
            .tabItem {
                Image(systemName: "checkmark.circle")
                Text("Contacted")
            }
            ProspectsView(filter: .uncontacted)
            .tabItem {
               Image(systemName: "questionmark.diamond")
               Text("Uncontacted")
           }
          MyView()
            .tabItem {
               Image(systemName: "person.crop.square")
               Text("Myself")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
