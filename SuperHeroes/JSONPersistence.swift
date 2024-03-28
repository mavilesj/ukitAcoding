//
//  JSONPersistence.swift
//  SuperHeroes
//
//  Created by Miguel on 25/3/24.
//

import Foundation

protocol JSONPersistence {
    func getFromJSON<JSON>(url: URL, type: JSON.Type) throws -> JSON where JSON: Codable
    func writeToJSON<Structs>(file: String, data: Structs) throws where Structs: Codable
}

extension JSONPersistence {
    func getFromJSON<JSON>(url: URL, type: JSON.Type) throws -> JSON where JSON: Codable {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(type, from: data)
    }
    
    func writeToJSON<Structs>(file: String, data: Structs) throws where Structs: Codable {
        let url = URL.documentsDirectory.appending(path: file)
        let data = try JSONEncoder().encode(data)
        try data.write(to: url, options: .atomic)
    }
}
