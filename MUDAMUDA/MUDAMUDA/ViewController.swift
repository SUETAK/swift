//
//  ViewController.swift
//  MUDAMUDA
//
//  Created by 末廣拓也 on 2019/06/08.
//  Copyright © 2019 Suetak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let testLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(self.rotationChange(notification:)), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    @objc
    func rotationChange(notification: NSNotification){
        setlabel()
    }
    
    func setlabel(){
        let screenWidth:CGFloat = view.frame.size.width
        let screenHeight:CGFloat = view.frame.size.height
        
        testLabel.frame = CGRect(x: 0.5, y: screenHeight-80, width: screenWidth, height: 90)
        
        testLabel.text = "What's color is your brod?"
        
        testLabel.textColor = UIColor.black
        
        testLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
        testLabel.backgroundColor = UIColor(red: 0.9, green: 0.3, blue: 0.58, alpha: 2.0)
        
        testLabel.textAlignment = NSTextAlignment.center
        
        self.view.addSubview(testLabel)
        
    }
}

