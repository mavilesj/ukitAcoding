//
//  SuperHeroeLogic.swift
//  SuperHeroes
//
//  Created by Miguel on 25/3/24.
//

import Foundation

final class SuperHeroeLogic {
    
    static let shared = SuperHeroeLogic()
    
    let interactor: DataInteractor
    
    
    var superheroes: [SuperHeroe] {
        didSet {
           print("cambio")
        }
    }
    
    init(interactor: DataInteractor = SuperHeroeInteractor.shared) {
        self.interactor = interactor
        self.superheroes = (try? interactor.getSuperHeroes()) ?? []
    }
    
    func getSuperHeroe(indexPath: IndexPath) -> SuperHeroe {
        superheroes[indexPath.row]
    }
    
}
