//
//  ClosureViewController.swift
//  SwiftOne
//
//  Created by chongzu20 on 2018/6/5.
//  Copyright © 2018年 chongzu20. All rights reserved.
//

import UIKit

typealias successBlock = (_ responseObject:Any?) ->Void
typealias failureBlock = (_ err:NSError) ->Void

typealias didViewTouchBlock = (_ presonName:String,_ presonAge:String)->Void

class ClosureViewController: UIViewController {
    var didblock:didViewTouchBlock?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.title = "闭包";
       self.view.backgroundColor = UIColor.white
        let names = [4, 7, 2, 1, 10]
        
        // 使用普通函数(或内嵌函数)提供排序功能,闭包函数类型需为(String, String) -> Bool。
        func backwards(s1:Int, s2: Int) -> Bool {
            return s1 > s2
        }
        let reversed = names.sorted(by: backwards)
        
        print(reversed)
        
        self.paiXu();
        
        let incrementByTen = makeIncrementor(forIncrement: 10)
        
        print(incrementByTen())
    }
        
    //闭包捕获值会累加
    func makeIncrementor(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementor() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementor
    }

    
    //冒泡排序
    func paiXu (){
       
        var textArray = [1,5,9,23,67,40,56,7,4,10]
        
        
        for i in 0..<textArray.count
        {

            for j in 0..<textArray.count-1-i{
   
                
                if textArray[j]>textArray[j+1]{

                    let temp = textArray[j];
                    
                    textArray[j] = textArray[j+1]

                    textArray[j+1] = temp;
                }
            }

        }
        
        print(textArray)
        
//        GetRequest(urlString:"11", parameters: nil, success:
//            {
//                (llll) in
//
//
//        }) {
//
//            (err) in
//
//        }
    }
    
    
    func GetRequest(urlString:String,parameters:[String:Any]?,success:successBlock?,failure:failureBlock?) {
        
        if success != nil {
            
            success!("22222")
        }

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if didblock != nil {
            
           didblock!("","")
            
        }
    
    }
   



}
