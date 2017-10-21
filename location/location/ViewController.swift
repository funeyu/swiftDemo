//
//  ViewController.swift
//  location
//
//  Created by fuheyu on 2017/10/21.
//  Copyright © 2017年 fuheyu. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let location: CLLocationManager = CLLocationManager()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.location.startUpdatingLocation()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.location.stopUpdatingLocation()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        location.delegate = self
        location.desiredAccuracy = kCLLocationAccuracyBest
        
        location.requestWhenInUseAuthorization()
        location.startUpdatingLocation()
        print("开始定位")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("get location")
        
        let loc: CLLocation = locations[locations.count-1] as CLLocation
        
        if(loc.horizontalAccuracy > 0) {
            self.location.stopUpdatingLocation()
            
            print(loc.coordinate)
        }
    }

}

