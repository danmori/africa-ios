//
//  BundleExtension.swift
//  Africa Not SwiftUI
//
//  Created by Dan Mori on 13/07/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(path: String) -> [T] {
        guard let url = self.url(forResource: path, withExtension: nil), let data = try? Data(contentsOf: url) else { return [] }
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode([T].self, from: data) else { return []}
        return loaded
    }
}
