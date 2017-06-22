//
//  ViewController.swift
//  MyOmikujiApp2
//
//  Created by 北村槙一朗 on 2017/06/22.
//  Copyright © 2017年 北村槙一朗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //変数の宣言
    @IBOutlet weak var myLabel: UILabel!
    
    //おみくじ結果
    let results = ["大吉","吉","中吉","凶","大凶"]
    
    //ボタン押下時の処理
    @IBAction func getOmikuji(_ sender: Any) {
        
        //乱数の生成
        let random = arc4random_uniform(UInt32(self.results.count))
        
        //乱数をラベルに表示
        self.myLabel.text = self.results[Int(random)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

