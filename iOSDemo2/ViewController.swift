//
//  ViewController.swift
//  iOSDemo2
//
//  Created by bingy on 1/18/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var container: UIView!
    
    // MARK: - xxx
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        container = UIView()
        container.backgroundColor = .primary30
        view.addSubview(container)
        
        let logoView = UIImageView()
        logoView.image = UIImage(named: "Logo")
        container.addSubview(logoView)
        
        container.addSubview(phoneLoginButton)
        
        let agreementLabelView = UILabel()
        agreementLabelView.text = "xxx"
        agreementLabelView.font = UIFont.systemFont(ofSize: 12)
        agreementLabelView.textColor = .gray
        container.addSubview(agreementLabelView)
        
        // MARK: - yueshu
        container.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-16)
//            make.bottom.equalToSuperview()
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(16)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-16)
        }
        
        logoView.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalTo(100)
            //水平居中
            make.centerX.equalToSuperview()
        }
        
        phoneLoginButton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(42)
            make.bottom.equalTo(agreementLabelView.snp.top).offset(-30)
//            make.centerY.
        }
        
        agreementLabelView.snp.makeConstraints { make in
            //居底
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func phoneLoginClick(_ sender: UIButton){
        print("ViewController phoneLoginClick \(String(describing: sender.titleLabel?.text))")
        let t = SettingsController()
        navigationController!.pushViewController(t, animated: true)
    }
    
    lazy var phoneLoginButton : UIButton = {
        let r = UIButton(type: .system)
        r.setTitle("phone login", for: .normal)
        r.addTarget(self, action: #selector(phoneLoginClick(_:)), for: .touchUpInside)
        r.backgroundColor = .red
        r.layer.cornerRadius = 5
        r.setTitleColor(.white, for: .normal)
        //pressed color
        r.setTitleColor(.gray, for: .highlighted)
        return r
    }()


}

