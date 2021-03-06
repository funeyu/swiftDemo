//
//  AFNHelper.swift
//  afn
//
//  Created by fuheyu on 2017/10/22.
//  Copyright © 2017年 fuheyu. All rights reserved.
//

import UIKit
import AFNetworking

class AFNHelper: AFHTTPSessionManager {
    
    static let share: AFNHelper = {
        let baseUrl = "https://api.github.com"
        let manager = AFNHelper(baseURL: URL(string: baseUrl), sessionConfiguration: URLSessionConfiguration.default)
        manager.responseSerializer.acceptableContentTypes = NSSet(objects: "application/json", "text/json", "text/javascript",
                                                                  "text/plain", "text/html") as? Set<String>
        return manager
    }()
    
    class func get(urlString: String, parameters: Any?,
                   success: ((_ response: Any?) -> Void)?,
                   fail: ((_ error: Error) -> Void)?) {
        
        AFNHelper.share.get(urlString, parameters: parameters, progress: nil,
                            success: {(task, response) in
                                if response != nil {
                                    success!(response)
                                }
                            }) { (task: URLSessionTask?, error: Error) in
                                fail!(error)
                            }
    }
}
