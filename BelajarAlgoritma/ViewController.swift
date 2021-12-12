//
//  ViewController.swift
//  BelajarAlgoritma
//
//  Created by mac on 12/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayAngka = [1, 8, 4, 3, 5, 10, 21, 55, 6, 44, 77, 2]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("cek dobubble: \(bubbleSort(data: arrayAngka))")
    }


}

