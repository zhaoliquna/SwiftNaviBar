//
//  Structure ViewController.swift
//  SwiftOne
//
//  Created by chongzu20 on 2018/6/5.
//  Copyright © 2018年 chongzu20. All rights reserved.
//

import UIKit

class Structure_ViewController: UIViewController {

    struct cgrect {
        
        var withd = 0
        
        var height = 100;
        
    }
    
    class ShoppingListItem {
        var name: String?
        var quantity = 1
        var purchased = false
    }
    struct Size {
        var width = 0.0, height = 0.0
    }
    struct Point {
        var x = 0.0, y = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        init() {}
        init(origin: Point, size: Size) {
            self.origin = origin
            self.size = size
        }
        init(center: Point, size: Size) {
            let originX = center.x - (size.width / 2)
            let originY = center.y - (size.height / 2)
            self.init(origin: Point(x: originX, y: originY), size: size)
        }
    }
    
    //枚举的可失败初始化器
    enum TemperatureUnit {
        case Kelvin, Celsius, Fahrenheit
        init?(symbol: Character) {
            switch symbol {
            case "K":
                self = .Kelvin
            case "C":
                self = .Celsius
            case "F":
                self = .Fahrenheit
            default:
                return nil
            }
        }
    }
    
    
    class Document {
        var name: String?
        // this initializer creates a document with a nil name value
        init() {}
        // this initializer creates a document with a non-empty name value
        init?(name: String) {
            self.name = name
            if name.isEmpty { return nil }
        }
    }
    
    //重写可失败初始化器
    class AutomaticallyNamedDocument: Document {
        override init() {
            super.init()
            self.name = "[Untitled]"
        }
        override init(name: String) {
            super.init()
            if name.isEmpty {
                self.name = "[Untitled]"
            } else {
                self.name = name
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "类和结构体"
        self.view.backgroundColor = UIColor.white
        
        var lll = cgrect(withd: 640, height: 480)
        
        let item = ShoppingListItem()
        
        item.name = "name";
        
     let fahrenheitUnit = TemperatureUnit(symbol: "F")
        
        print(fahrenheitUnit)
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
