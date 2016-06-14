//
//  SwipeViewController.swift
//  textFieldKeyboard
//
//  Created by 蔡舜珵 on 2016/6/14.
//  Copyright © 2016年 蔡舜珵. All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    
    var imageIndex = 0
    let maxImages = 11
    var picArray = ["acpi2","acpic1","acpic3","acpic4","acpic5","bernard","ihower","Tim","pic1","pic2","pic3","pic4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageview.image = UIImage(named: picArray[imageIndex])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleSwipe(sender: AnyObject) {
        
        if let swipeGesture = sender as? UISwipeGestureRecognizer {
            
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
                
            }
        }
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
