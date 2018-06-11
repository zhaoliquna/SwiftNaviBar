//
//  TwoViewController.swift
//  SwiftOne
//
//  Created by chongzu20 on 2018/6/5.
//  Copyright © 2018年 chongzu20. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.view.backgroundColor = UIColor.white;
        let twoVC = ViewController()
        
        var jj = "lll"
        var jtwo = "lll"
        
        
        print(textName(str: &jj, ddd: &jtwo))
        twoVC.didVoid();
        
        vari(members: 4,3,5)
        vari(members: 4.5, 3.1, 5.6)
        vari(members: "Google", "Baidu", "Runoob")
        
        //函数类型变量指向函数sum
        var addition: (Int, Int) -> Int = sum
        print("输出结果: \(addition(40, 89))")
    }
    
    //可变参数可以接受零个或多个值。函数调用时，你可以用可变参数来指定函数参数，其数量是不确定的。可变参数通过在变量类型名后面加入（...）的方式来定义。
    func vari<N>(members: N...){
        for i in members {
            print(i)
        }
    }
   
    //可变参数加 inout
    func textName(str: inout String,ddd: inout String) -> String {
        
        
        return str+ddd;
    }

    
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
