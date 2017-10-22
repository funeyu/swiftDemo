//
//  ViewController.swift
//  afn
//
//  Created by fuheyu on 2017/10/22.
//  Copyright © 2017年 fuheyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let param = ["q": "language:python", "sort": "stars"]
        AFNHelper.get(urlString: "/search/repositories", parameters: param,
                      success: {(response) in
                        print(response)
        },
                      fail: {(error) in
                        print(error)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

