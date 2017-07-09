//
//  TicketFace.swift
//  IngressosSC
//
//  Created by Pedro Azevedo on 28/06/17.
//  Copyright © 2017 Pedro Azevedo. All rights reserved.
//

import Foundation
import UIKit

class TicketCell: UICollectionViewCell {
    
    @IBOutlet weak var ticketImage: UIImageView!
    
    @IBOutlet weak var eventName: UITextField!
    
    @IBOutlet weak var purchaseButton: UIButton!
    
    
    func buildUICell () {
        buildPurchaseButton()
        buildEventName()
    
    }
    
    func buildEventName() {
        eventName.textColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        eventName.text =  "Project Party"
    }
    
    func buildPurchaseButton() {
        purchaseButton.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        purchaseButton.layer.cornerRadius = 8
        purchaseButton.clipsToBounds = true
    }
}
