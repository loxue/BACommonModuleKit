//
//  CCFirstComponent.swift
//  CCComponentDemo
//
//  Created by myc on 2020/12/7.
//

import Foundation
import UIKit
import RxSwift

class CCFirstComponent: UIViewController {
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "LoginModule"
        self.view.backgroundColor = UIColor.white
        
        // lazy load
        let loginLab = UILabel.init(frame: .init(x: (UIScreen.main.bounds.size.width-100)/2, y: 140, width: 100, height: 100))
        loginLab.text = "长城"
        loginLab.font = .systemFont(ofSize: 26)
        loginLab.textColor = .white
        loginLab.textAlignment = .center
        loginLab.layer.cornerRadius = 50
        loginLab.clipsToBounds = true
        loginLab.backgroundColor = .systemGreen
        self.view?.addSubview(loginLab)
        
        let loginPhoneText = UITextField.init(frame: CGRect.init(x: 25, y: loginLab.frame.maxY+40, width: (UIScreen.main.bounds.size.width-50), height: 50))
        loginPhoneText.placeholder = "请输入手机号"
        loginPhoneText.borderStyle = UITextField.BorderStyle.roundedRect
        self.view?.addSubview(loginPhoneText)
        
        let loginPasswordText = UITextField.init(frame: CGRect.init(x: 25, y: loginPhoneText.frame.maxY+20, width: (UIScreen.main.bounds.size.width-50), height: 50))
        loginPasswordText.placeholder = "请输入手机验证码"
        loginPasswordText.borderStyle = UITextField.BorderStyle.roundedRect
        self.view?.addSubview(loginPasswordText)
        
        let loginBtn = UIButton(type: .custom)
        loginBtn.frame = CGRect.init(x: 25, y: loginPasswordText.frame.maxY+80, width: (UIScreen.main.bounds.size.width-50), height: 70)
        loginBtn.setTitle("登录", for: .normal)
        loginBtn.backgroundColor = UIColor.systemRed
        loginBtn.layer.cornerRadius = 35
        loginBtn.addTarget(self, action: #selector(loginTapped(_:)), for: .touchUpInside)
        self.view?.addSubview(loginBtn)
        
    }
    
    @objc func loginTapped(_ loginTapped: UIButton) {
        let alertTip = UIAlertController.init(title: "提示", message: "登录成功", preferredStyle: .alert)

        let cancleBtn = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertTip.addAction(cancleBtn)
        self.present(alertTip, animated: true, completion: nil)
    }
}
