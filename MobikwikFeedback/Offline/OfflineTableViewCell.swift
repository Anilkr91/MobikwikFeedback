//
//  OfflineTableViewCell.swift
//  MobikwikFeedback
//
//  Created by admin on 21/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import UIKit

class OfflineTableViewCell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var qrCodeLabel: UILabel!
    @IBOutlet weak var transactionIdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
    var info: Feedback? {
        didSet {
            if let info = info {
                didSetCategory(info: info)
            }
        }
    }
}

extension OfflineTableViewCell {
    func didSetCategory(info: Feedback) {
        
        idLabel.text = info.id
        qrCodeLabel.text = info.qrCode
        transactionIdLabel.text = info.transactionId
    }
}
