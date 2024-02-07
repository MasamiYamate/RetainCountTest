//
//  DemoObject.swift
//  RetainCountTest
//
//  Created by Masami on 2024/02/07.
//

import Foundation

final class DemoObject {
    let date = Date()

    func printDate() {
        print("\(date.description)")
    }

    deinit {
        print("Deinit DemoObject")
    }
}
