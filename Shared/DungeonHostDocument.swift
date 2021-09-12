//
//  DungeonHostDocument.swift
//  Shared
//
//  Created by Markus Moenig on 12/9/21.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var dungeonHostProject: UTType {
        UTType(exportedAs: "com.DungeonHost.project")
    }
}

struct DungeonHostDocument: FileDocument {
    var text: String

    init(text: String = "Hello, world!") {
        self.text = text
    }

    static var readableContentTypes: [UTType] { [.dungeonHostProject] }
    static var writableContentTypes: [UTType] { [.dungeonHostProject] }
    
    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        text = string
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: data)
    }
}
