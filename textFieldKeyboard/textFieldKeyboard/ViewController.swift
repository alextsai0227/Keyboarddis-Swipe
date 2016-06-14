//
//  ViewController.swift
//  textFieldKeyboard
//
//  Created by 蔡舜珵 on 2016/6/14.
//  Copyright © 2016年 蔡舜珵. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: NSLayoutConstraint!
    @IBOutlet weak var imageview: UIImageView!
    var imageIndex = 0
    let maxImages = 11
    var picArray = ["acpi2","acpic1","acpic3","acpic4","acpic5","bernard","ihower","Tim","pic1","pic2","pic3","pic4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageview.image = UIImage(named: "acpi2")
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapView(sender: AnyObject) {
        self.view.endEditing(true)

    }

    
    func swiped(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.Right :
                
                imageIndex -= 1
                
                if imageIndex < 0 {
                    
                    imageIndex = maxImages
                    
                }
                self.imageview.image = UIImage(named: picArray[imageIndex])

            case UISwipeGestureRecognizerDirection.Left:
                
                
                imageIndex += 1
                
                // check if index is in range
                
                if imageIndex > maxImages {
                    
                    imageIndex = 0
                    
                }
                self.imageview.image = UIImage(named: picArray[imageIndex])

            default:
                break
//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//       self.view.endEditing(true)
//    }

                    }
            }
    }
    

}

