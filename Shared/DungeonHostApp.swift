//
//  DungeonHostApp.swift
//  Shared
//
//  Created by Markus Moenig on 12/9/21.
//

import SwiftUI

@main
struct DungeonHostApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: DungeonHostDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
