//
//  CarentSDK.swift
//  CarenetSDK
//
//  Created by Renato Carvalhan on 21/09/17.
//  Copyright © 2017 Renato Carvalhan. All rights reserved.
//

import UIKit

public class CarentSDK: NSObject {
    
    public static var shared: CarentSDK = {
        let instance = CarentSDK()
        return instance
    }()
    
    public func startSDKWithClientId(window: UIWindow) {
        
        let bundle = Bundle(identifier: "br.com.carenet.CarenetSDK")
        
        let storyboard = UIStoryboard(name: "SDK", bundle: bundle)
        let centerController = UINavigationController(rootViewController: storyboard.instantiateInitialViewController()!)
        
        UIApplication.shared.keyWindow?.rootViewController = centerController
    }

}
