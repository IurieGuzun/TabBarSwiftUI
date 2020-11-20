//
//  ProspectsView.swift
//  TabBarSwiftUI
//
//  Created by Iurie Guzun on 2020-11-19.
//  Copyright © 2020 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ProspectsView: View {
    enum FilterType {
        case none, contacted, uncontacted
    }
    @EnvironmentObject var prospects: Prospects
    
    let filter: FilterType
    
    var title: String {
        switch filter {
        case .none:
            return "Everybody"
        case .contacted:
            return "Contacted People"
        case .uncontacted:
            return "Uncontacted People"
        }
    }
    
    var body: some View {
        NavigationView{
            Text("People: \(prospects.people.count)")
                .navigationBarTitle(title)
                .navigationBarItems(trailing: Button("Save") {
                    print("Save")
                  
          
                let prospect = Share()
                prospect.name = "Iurie Guzun"
                prospect.email = "iurie@canada.com"
                self.prospects.people.append(prospect)
                print(self.title)
                print(prospect.id)
                print(prospect.name)
                print(prospect.email)
            })
            
        }
       
    }
}

struct ProspectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProspectsView(filter: .none)
    }
}
