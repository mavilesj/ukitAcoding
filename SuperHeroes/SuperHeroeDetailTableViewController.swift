//
//  SuperHeroeDetailTableViewController.swift
//  SuperHeroes
//
//  Created by Miguel on 27/3/24.
//

import UIKit

class SuperHeroeDetailTableViewController: UITableViewController {


    @IBOutlet weak var apodo: UILabel!
    
    @IBOutlet weak var cover: UIImageView!
    
    @IBOutlet weak var historia: UILabel!
    
    @IBOutlet weak var nombreReal: UILabel!
    @IBOutlet weak var descrip: UILabel!
    var selected: SuperHeroe?
    var poderesArray: [String] = []
    
    @IBOutlet weak var poderes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apodo.text = selected?.apodo
        cover.image = UIImage(named: "\(selected?.imagen ?? "default").png")
        descrip.text = selected?.descripcion
        
        historia.text = selected?.historia
        nombreReal.text = selected?.nombreReal
        // get poderes count
        let size = selected?.poderes.count ?? 0
        for p in 0...(size - 1)  {
            poderesArray.append(selected?.poderes[p].rawValue ?? "")
        }
        poderes.text = ""
        for ps in poderesArray {
            poderes.text?.append(ps)
            poderes.text?.append("\n")
        }
        
//        poderes.text = Poderes(rawValue: selected?.poderes)
        
    }

  
}
