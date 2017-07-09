//
//  ViewController.swift
//  IngressosSC
//
//  Created by Pedro Azevedo on 28/06/17.
//  Copyright © 2017 Pedro Azevedo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let requestTickets = RequestTickets()
    var tickets = [Ticket]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ticket = Ticket(ticketName: "Projetc Party", ticketSubname: "Project productions", ticketImage: #imageLiteral(resourceName: "project"), ticketDescription: "Spazio flex eventos", ticketDate: Date(), ticketPrice: 30.00)
        tickets.append(ticket)
    }
//    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ticket = tickets[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ticketCell", for: indexPath) as! TicketCell
        
        cell.buildUICell()
        cell
//        cell.eventName.text = "Project party"
        cell.ticketImage.image = ticket.ticketImage
        
        return cell
    }

    func request(){
        requestTickets.request { result in
            tickets = result
        }
    }
}

