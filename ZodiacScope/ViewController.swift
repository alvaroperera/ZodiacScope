//
//  ViewController.swift
//  ZodiacScope
//
//  Created by Álvaro Perera on 12/12/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var zodiacSignsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        zodiacSignsTable.delegate = self
        zodiacSignsTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ZodiacSign.getAllZodiacSigns().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ZodiacSignViewCell
        cell.fillCell(from: ZodiacSign.getAllZodiacSigns()[indexPath.row])
        return cell
    }
}

