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
        
    }
//    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ticketCell", for: indexPath)
            cell.backgroundColor = .black
        return cell
    }

    func request(){
        requestTickets.request { result in
            tickets = result
        }
    }
}

