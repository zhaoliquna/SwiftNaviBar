//
//  EnumerationViewController.swift
//  SwiftOne
//
//  Created by chongzu20 on 2018/6/5.
//  Copyright © 2018年 chongzu20. All rights reserved.
//

import UIKit

class EnumerationViewController: UIViewController {
    enum CompassPoint {
        case north
        case south
        case east
        case west
    }
    
    //枚举关联值
    enum Barcode {
        case upc(Int, Int, Int, Int)
        case qrCode(String)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "枚举"
        self.view.backgroundColor = UIColor.white
        
        let directionToHead = CompassPoint.south
        switch directionToHead {
        case .north:
            print("Lots of planets have a north")
        case .south:
            print("Watch out for penguins")
        case .east:
            print("Where the sun rises")
        case .west:
            print("Where the skies are blue")
        }
        var productBarcode = Barcode.upc(8, 85909, 51226, 3)
        
        switch productBarcode {
        case .upc(let numberSystem, let manufacturer, let product, let check):
            print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
        case .qrCode(let productCode):
            print("QR code: \(productCode).")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
