//
//  ViewController.swift
//  iOS通过View查找所属的控制器
//
//  Created by 李小龙 on 2020/3/27.
//  Copyright © 2020 李小龙. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    //1.通过响应者链关系，取得此视图的下一个响应者
    func  findViewController(view : UIView) -> UIViewController? {
        
        var nextResponder : UIResponder? = self
        
        repeat {
            nextResponder = nextResponder?.next
            
            if let viewController = nextResponder as? UIViewController {
                return viewController
            }
            
        }while  nextResponder != nil
        
        return nil
    }


}

