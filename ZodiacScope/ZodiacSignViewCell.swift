//
//  ZodiacSignViewCell.swift
//  ZodiacScope
//
//  Created by Álvaro Perera on 12/12/24.
//

import UIKit

class ZodiacSignViewCell: UITableViewCell {

    @IBOutlet weak var zodiacSignNameLabel: UILabel!
    
    @IBOutlet weak var zodiacSignDatesLabel: UILabel!
    
    
    @IBOutlet weak var zodiacSignImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fillCell(from zodiacSign: ZodiacSign) {
        zodiacSignNameLabel.text = zodiacSign.name
        zodiacSignDatesLabel.text = zodiacSign.dates
    }
    
}
