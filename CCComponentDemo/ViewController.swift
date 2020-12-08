//
//  ViewController.swift
//  CCComponentDemo
//
//  Created by myc on 2020/12/7.
//

import UIKit
//import CCLoginModule

// 屏幕宽高
let kScreenW = UIScreen.main.bounds.size.width
let kScreenH = UIScreen.main.bounds.size.height

// window
let keyWindow = UIApplication.shared.keyWindow

// 是否iPhone
let kIsIphone = Bool(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone)
let kIsIphoneX = Bool(kScreenW >= 375.0 && kScreenH >= 812.0 && kIsIphone)

// navbar statusbar tabbar height
let kNavigationBarH = CGFloat(kIsIphoneX ? 88.0 : 64.0)
let kStatusBarH = CGFloat(kIsIphoneX ? 44.0 : 20.0)
let kTabbarH = CGFloat(kIsIphoneX ? (49.0+34.0) : 49.0)

// color
func RGBColor(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
}

// font
func customFont(font: CGFloat) -> UIFont {
    // 刘海屏
    guard kScreenH <= 736 else {
        return UIFont.systemFont(ofSize: font)
    }
    // 5.5
    guard kScreenH == 736 else {
        return UIFont.systemFont(ofSize: font - 2)
    }
    // 4.7
    guard kScreenH >= 736 else {
        return UIFont.systemFont(ofSize: font - 4)
    }
    
    return UIFont.systemFont(ofSize: font)
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "测试页"
        
        let loadBtn = UIButton(type: .custom)
        loadBtn.frame = CGRect(x: 20, y: 120, width: kScreenW - 40, height: 30)
        loadBtn.setTitle("普通登录", for: UIControl.State.normal)
        loadBtn.setTitleColor(UIColor.red, for: UIControl.State.normal)
        self.view.addSubview(loadBtn)
        loadBtn.addTarget(self, action:#selector(clicked), for:.touchUpInside)
//        loadBtn.addTarget(self, action: #selector(clickMe(_:)), for: .touchUpInside)
        
        let rxBtn = UIButton(type: .custom)
        rxBtn.frame = CGRect(x: 20, y: loadBtn.frame.maxY+30, width: kScreenW - 40, height: 30)
        rxBtn.setTitle("RxSwift登录", for: UIControl.State.normal)
        rxBtn.setTitleColor(UIColor.red, for: UIControl.State.normal)
        self.view.addSubview(rxBtn)
        rxBtn.addTarget(self, action:#selector(tapped), for:.touchUpInside)
    }
    
    @objc func tapped() {
//        self.navigationController?.pushViewController(CCLoginModule.init(), animated: true)
        self.navigationController?.pushViewController(SignUpVC.init(), animated: true)
        print("不带参数")
    }
    
    @objc func clicked() {
//        self.navigationController?.pushViewController(CCLoginModule.init(), animated: true)
        self.navigationController?.pushViewController(CCLoginModule.init(), animated: true)
        print("不带参数")
        
    }


}

