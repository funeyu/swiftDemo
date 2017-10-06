//
//  ArticleViewController.swift
//  pages
//
//  Created by fuheyu on 2017/10/6.
//  Copyright © 2017年 fuheyu. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fullSize = UIScreen.main.bounds.size
        
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: fullSize.width * 0.5, height: 40))
        label.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.08)
        label.backgroundColor = UIColor.blue
        label.textAlignment = .center
        label.text = "文章列表页"
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        button.setTitle("退出", for: .normal)
        button.backgroundColor = UIColor.lightGray
        button.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.2)
        button.addTarget(self, action: #selector(self.goBack), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
}
