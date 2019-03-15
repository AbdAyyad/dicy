//
//  ViewController.swift
//  dicy
//
//  Created by Abdelrahman Ayyad on 3/10/19.
//  Copyright © 2019 Abdelrahman Ayyad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    let array = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    func roll(){
        let idx1 = Int.random(in: 0...5)
        imageView1.image = UIImage(named: array[idx1])
        let idx2 = Int.random(in: 0...5)
        imageView2.image = UIImage(named: array[idx2])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       roll()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        roll()
    }


    @IBAction func rollButtonPressed(_ sender: Any) {
        roll()
    }
}

