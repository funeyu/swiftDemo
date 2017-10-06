//
//  ViewController.swift
//  slider
//
//  Created by fuheyu on 2017/10/6.
//  Copyright © 2017年 fuheyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageView: UIImageView!
    var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        let fullScreenSize = UIScreen.main.bounds.size
        
        // 建立一个UIImage
        imageView = UIImageView(image: UIImage(named: "watcher"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
        imageView.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.width * 0.3)
        self.view.addSubview(imageView)
        
        // 建立slider
        slider = UISlider(frame: CGRect(x: 0, y: 0, width: fullScreenSize.width * 0.9, height: 50))
        slider.backgroundColor = UIColor.lightGray
        slider.maximumTrackTintColor = UIColor.orange
        slider.minimumTrackTintColor = UIColor.purple
        slider.thumbTintColor = UIColor.brown
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.isContinuous = true
        
        slider.value = 40
        // 滑杆滑动时执行的操作
        // slider.addTarget(self, action: #selector(ViewController.onSliderChange), for: UIControlEvents.valueChanged)
        slider.addTarget(self, action: #selector(self.onSliderChange), for: UIControlEvents.valueChanged)
        
        slider.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.width * 0.65)
        self.view.addSubview(slider)
        
    
    }
    
    @objc func onSliderChange() {
        imageView.alpha = CGFloat(slider.value / slider.maximumValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

