//
//  DataFactory.swift
//  RetainCountTest
//
//  Created by Masami on 2024/02/07.
//

import Foundation

final class DataFactory {

    static let shared: DataFactory = DataFactory()

    private var sharedObjectStore: DemoObjectStore?

    func make() -> DemoObjectStore {
        if let sharedObjectStore {
            return sharedObjectStore
        }
        let store = DemoObjectStore()
        sharedObjectStore = store
        return store
    }

    func checkCount() {
        guard sharedObjectStore != nil else { return }
        print("Count \(CFGetRetainCount(sharedObjectStore!))")
    }

    func release() {
        guard sharedObjectStore != nil else { return }
        let count = CFGetRetainCount(sharedObjectStore!)
        print("Count (release step check) \(CFGetRetainCount(sharedObjectStore!))")
        // 参照カウントが2の時は、シングルトンで保持している時のみ
        guard count <= 2 else { 
            print("Not Release")
            return
        }
        sharedObjectStore = nil
        print("Released")
    }

}
