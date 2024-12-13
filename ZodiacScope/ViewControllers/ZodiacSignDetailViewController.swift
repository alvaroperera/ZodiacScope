//
//  ZodiacSignDetailViewController.swift
//  ZodiacScope
//
//  Created by Álvaro Perera on 13/12/24.
//

import UIKit

class ZodiacSignDetailViewController: UIViewController{
    
    @IBOutlet weak var zodiacSignIMG: UIImageView!
    var zodiacSign: ZodiacSign?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.}
        loadViewItems()
    }
    
    func loadViewItems(){
        zodiacSignIMG.image = UIImage(named: zodiacSign!.iconImage)
    }
}
