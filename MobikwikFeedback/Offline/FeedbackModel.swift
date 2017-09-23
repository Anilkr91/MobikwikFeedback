//
//  FeedbackModel.swift
//  MobikwikFeedback
//
//  Created by admin on 21/09/17.
//  Copyright © 2017 Techximum. All rights reserved.
//

import UIKit

struct Feedback {
   
    let id: String
    let qrCode: String
    let transactionId: String
    
    init(id: String, qrCode: String, transactionId: String) {
        
        self.id = id
        self.qrCode = qrCode
        self.transactionId = transactionId
    }
}
