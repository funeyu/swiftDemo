//
//  ArticleViewController.swift
//  navBar
//
//  Created by fuheyu on 2017/10/7.
//  Copyright © 2017年 fuheyu. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let fullSize = UIScreen.main.bounds.size
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        label.backgroundColor = UIColor.blue
        label.text = "文章标签"
        label.textAlignment = .center
        label.center = CGPoint(x: fullSize.width * 0.5, y: fullSize.height * 0.2)
        self.view.addSubview(label)
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
