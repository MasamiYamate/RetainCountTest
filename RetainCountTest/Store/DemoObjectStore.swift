//
//  DemoObjectStore.swift
//  RetainCountTest
//
//  Created by Masami on 2024/02/07.
//

import Foundation

final class DemoObjectStore {
    let object: DemoObject

    init(object: DemoObject = DemoObject()) {
        self.object = object
    }

    deinit {
        print("Deinit DemoObjectStore")
    }
}
