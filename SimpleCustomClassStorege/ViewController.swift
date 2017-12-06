//
//  ViewController.swift
//  SimpleCustomClassStorege
//
//  Created by s247 on 2017/11/08.
//  Copyright © 2017年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //ユーザーデフォルトを呼び出す
        let ud = UserDefaults.standard
        //MyDataをインスタンス化
        let data = MyDate()
        //プロパティ　valuesStringにtestを代入する
        data.valuesString = "test"
        
        //シリアライズ
        let archiveData = NSKeyedArchiver.archivedData(withRootObject: data)
        
        //ユーザーデフォルトに保存
        ud.set(archiveData, forKey: "data")
        ud.synchronize()
        
        //デシリアライズ
        if let storedData = ud.object(forKey: "data") as? Data {
            if let unarchivedData = NSKeyedUnarchiver.unarchiveObject(with: storedData) as? MyDate {
                if let valueString = unarchivedData.valuesString {
                    print (valueString)
                }
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

