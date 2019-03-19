//
//  AppDelegate.swift
//  Calculator
//
//  Created by Sven Forstner on 21.02.19.
//  Copyright © 2019 Sven Forstner. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initalizeFirstControler()
        //print("\(UIDevice().type.rawValue)")
        //Device.type = UIDevice().type.rawValue
        getTopConstraintValue()
        return true
    }
    
    func initalizeFirstControler() {
        // add first screen and call it
        
        let viewController = ViewController()
        let navigationsController = UINavigationController(rootViewController: viewController)
        
        window = UIWindow(frame: UIScreen.main.bounds) // create window
        window?.rootViewController = navigationsController // set rootViewController
        window?.makeKeyAndVisible() // show the window
    }
    
    func getTopConstraintValue() {
        switch UIDevice().type.rawValue {
            
        case "iPhone XS Max":
            print("X Max")
        case "iPhone XS":
            print("XS")
        case "iPhone XR":
            print("XR")
        case "iPhone X":
            print("X")
        default:
            print("16:9")
            Constraints.top = 120
        }
    }


}
