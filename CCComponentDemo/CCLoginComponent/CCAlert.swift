//
//  CCAlert.swift
//  CCComponentDemo
//
//  Created by myc on 2020/12/8.
//

import Foundation
import UIKit

public class CCAlert{
    static func alert(title: String ,
                      message: String ,
                      leftBtnTitle: String ,
                      leftStyle: UIAlertAction.Style = .default,
                      rightBtnTitle: String,
                      rightStyle: UIAlertAction.Style = .default,
                      presentViewController:UIViewController? = (UIApplication.shared.keyWindow!.rootViewController)!,
                      leftBtnAction:(()->Void)? ,
                      rightBtnAction:(()->Void)?
                      ){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let leftAct : UIAlertAction = UIAlertAction.init(title:leftBtnTitle, style: leftStyle) { (action) in
            leftBtnAction?()
        }
        let rightAct : UIAlertAction = UIAlertAction.init(title: rightBtnTitle, style: rightStyle) { (action) in
            rightBtnAction?()
        }
        alertController.addAction(leftAct)
        alertController.addAction(rightAct)
        presentViewController?.present(alertController, animated: true, completion: nil)
    }
    
    
    static func alert(title: String ,
                      message: String ,
                      btnTitle: String ,
                      presentViewController:UIViewController? = (UIApplication.shared.keyWindow!.rootViewController)!,
                      btnAction:(()->Void)?
        ){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let btnAct : UIAlertAction = UIAlertAction.init(title:btnTitle, style: .default) { (action) in
            btnAction?()
        }
      
        alertController.addAction(btnAct)
        presentViewController?.present(alertController, animated: true, completion: nil)
    }
}
