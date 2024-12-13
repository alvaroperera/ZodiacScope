//
//  ViewController.swift
//  ZodiacScope
//
//  Created by Álvaro Perera on 12/12/24.
//

import UIKit

class ZodiacSignMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var zodiacSignsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowZodiacSignDetail" {
            if let indexPath = zodiacSignsTable.indexPathForSelectedRow {
                let zodiacSign = ZodiacSign.getAllZodiacSigns()[indexPath.row]
                let destinationVC = segue.destination as! ZodiacSignDetailViewController
                destinationVC.zodiacSign = zodiacSign }
        }
    }
}

