//
//  ViewController.swift
//  pages
//
//  Created by fuheyu on 2017/10/6.
//  Copyright © 2017年 fuheyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fullSize = UIScreen.main.bounds.size
        
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: fullSize.width, height: 40))
        label.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.08)
        label.textAlignment = .center
        label.text = "首页"
        self.view.addSubview(label)
        
        var button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        button.setTitle("文章", for: .normal)
        button.backgroundColor = UIColor.lightGray
        button.addTarget(nil, action: #selector(self.goArticle), for: .touchUpInside)
        button.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.4)
        self.view.addSubview(button)
        
    }
    
    @objc func goArticle() {
        self.present(ArticleViewController(), animated: true, completion: nil)
    }
    
    @objc func goIntro() {
        self.present(IntroViewController(), animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

