//
//  ViewController.swift
//  dicee
//
//  Created by Fuzail Ahmed on 11/07/19.
//  Copyright © 2019 Fuzail Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image_view_dice_1: UIImageView!
    @IBOutlet weak var image_view_dice_2: UIImageView!
    
    var index_dice_1: Int = 0
    var index_dice_2: Int = 0
    let dice_arr: [String] = ["dice1", "dice2", "dice2", "dice3", "dice4", "dice5"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPress(_ sender: Any) {
        index_dice_1 = Int.random(in: 0 ... 5);
        index_dice_2 = Int.random(in: 0 ... 5);
        
        image_view_dice_1.image = UIImage(named: dice_arr[index_dice_1])
        image_view_dice_2.image = UIImage(named: dice_arr[index_dice_2])
    }
    
}

