//
//  SuperHeroe.swift
//  SuperHeroes
//
//  Created by Miguel on 25/3/24.
//

import Foundation

struct SuperHeroeDTO: Codable, Hashable {
    var id: UUID
    let nombreReal: String
    let apodo: String
    var descripcion: String
    var historia: String
    let edad: Int
    let poderes:[Poderes]
    let imagen: String
    
    var toSuperHeroe: SuperHeroe {
        SuperHeroe(id: id, nombreReal: nombreReal, apodo: apodo, descripcion: descripcion, historia: historia, edad: edad, poderes: poderes, imagen: imagen, favorited: false)
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        do {
            let id = try container.decode(UUID.self, forKey: .id)
            self.id = id
        } catch {
            self.id = UUID()
        }
        let nombreReal = try container.decode(String.self, forKey: .nombreReal)
        if nombreReal.isEmpty {
            self.nombreReal = "Joe"
        } else {
            self.nombreReal = nombreReal
        }
        self.apodo = try container.decode(String.self, forKey: .apodo)
        do {
            let descripcion = try container.decode(String.self, forKey: .descripcion)
            self.descripcion = descripcion
        } catch {
            self.descripcion = "Not found"
        }
        do {
            let historia = try container.decode(String.self, forKey: .historia)
            self.historia = historia
        } catch {
            self.historia = "Not found"
        }
        self.edad = try container.decode(Int.self, forKey: .edad)
        do {
            let poderes = try container.decode([Poderes].self, forKey: .poderes)
            self.poderes = poderes
        } catch {
            self.poderes = [.amplificacionSonido]
        }
        self.imagen = try container.decode(String.self, forKey: .imagen)
        
        }
    
    
}


struct SuperHeroe: Codable, Hashable {
    let id: UUID
    let nombreReal: String
    let apodo: String
    let descripcion: String
    let historia: String
    let edad: Int
    let poderes:[Poderes]
    let imagen: String
    var favorited: Bool
    
    
}
