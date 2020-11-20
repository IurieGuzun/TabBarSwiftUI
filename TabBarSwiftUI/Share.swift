//
//  Share.swift
//  TabBarSwiftUI
//
//  Created by Iurie Guzun on 2020-11-19.
//  Copyright © 2020 Iurie Guzun. All rights reserved.
//

import SwiftUI

class Share: Identifiable, Codable {
    var id = UUID()
    var name = "Incognito"
    var email = ""
    var isContacted = false
}

class Prospects: ObservableObject {
    @Published var people: [Share]
    init() {
        self.people = []
    }
}
