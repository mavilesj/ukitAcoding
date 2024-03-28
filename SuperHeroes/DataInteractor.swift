//
//  DataInteractor.swift
//  SuperHeroes
//
//  Created by Miguel on 25/3/24.
//

import Foundation

protocol DataInteractor {
    func getSuperHeroes() throws -> [SuperHeroe]
}

struct SuperHeroeInteractor: DataInteractor, JSONPersistence {
    static let shared = SuperHeroeInteractor()
    
    private init() {}
    
    func getSuperHeroes() throws -> [SuperHeroe] {
        guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { return [] }
        return try getFromJSON(url: url, type: [SuperHeroeDTO].self).map(\.toSuperHeroe)
    }
}


