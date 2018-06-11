//
//  ViewController.swift
//  SwiftOne
//
//  Created by chongzu20 on 2018/6/4.
//  Copyright © 2018年 chongzu20. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var tableView:UITableView?
    
    var array = [String]()
    
    let listArray = ["函数","闭包","枚举","类和结构体"]
    let (x,y) = ("利库德","堪萨斯")
    let (a,b) = ("利德","斯")//字符串越短越大
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "swift";
        self.view.backgroundColor = UIColor.white;
        self.creat();
        
        creatTableView()//创建列表
    }
    
    func creat(){
        
        var   N:Int = 1;

        var d:Int = 0;
       
        while 1 < N
        {
            d += N/3;
            N = N/3+N%3;
            if(N==2){
                d += 1;
                
                N = 0;
            }
           
        }
        
        print(d);

        //数组添加字符串
        array.append("DDd")
        array.append("ccc")
        array.append("fff")
        
        //数组插入字符串
        array.insert("ttt", at: 1)
        print("数组:",array);
        //字典
        
        //创建字典
        var someDic = [Int:String]()
        
        someDic = [1:"vale1",2:"vale2",3:"vale1",4:"vale2"];
        //字典更新value
        someDic.updateValue("ttt", forKey: 2)
        //字典添加元素
        someDic[5] = "xxx";
        //字典移除元素
        someDic.removeValue(forKey: 2)
        
        //字典取值
        let ttt = someDic[5]
       // someDic[1];
        print(ttt)
        print("字典:",someDic)
        
       
      
    }
    
    func creatTableView (){
    
        self.tableView = UITableView.init(frame:CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.size.height));
        
        self.tableView?.dataSource = self;
        self.tableView?.delegate = self;
        
        self.view.addSubview(self.tableView!)
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return self.listArray.count;
    }
    
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        var cell = self.tableView?.dequeueReusableCell(withIdentifier:"cell")
        
        if !(cell != nil) {
            
          
            cell = UITableViewCell.init(style:UITableViewCellStyle.default, reuseIdentifier: "cell")
        }
        
        cell?.textLabel?.text = listArray[indexPath.row];
        
        return cell!
    }

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row==0 {
            
            let vc = TwoViewController.init()
            
            self.navigationController?.pushViewController(vc, animated:true)
        }
        
        if indexPath.row==1 {
            let vc = ClosureViewController.init()
        
            //block回调
            vc.didblock =  {
                
                (index,tapAnimation) in
                
            }
           
            self.navigationController?.pushViewController(vc, animated:true)
        }
        
        if indexPath.row==2 {
            
            let vc = EnumerationViewController.init()
            
            self.navigationController?.pushViewController(vc, animated:true)
        }
        
        if indexPath.row==3 {
            
            let vc = Structure_ViewController.init()
            
            self.navigationController?.pushViewController(vc, animated:true)
        }
        
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let vc = TwoViewController.init()
        
        self.navigationController?.pushViewController(vc, animated:true)
    }
    
    public func didVoid(){
        
        print(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

