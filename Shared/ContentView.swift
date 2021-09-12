//
//  ContentView.swift
//  Shared
//
//  Created by Markus Moenig on 12/9/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DungeonHostDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}
