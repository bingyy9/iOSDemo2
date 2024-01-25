//
//  SettingsController.swift
//  iOSDemo2
//
//  Created by bingy on 1/18/24.
//

import UIKit

class SettingsController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .colorPrimary
        title = "Settings"
        
        view.addSubview(settingsView)
        view.addSubview(collectView)
        
        settingsView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
            make.height.equalTo(55)
        }
        
        collectView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(settingsView.snp.bottom).offset(1)
            make.height.equalTo(55)
        }
    }
    
    @objc func onSettingClick(recognizer: UITapGestureRecognizer){
        print("onSettingClick")
    }
    
    lazy var settingsView: SettingsView = {
        let r = SettingsView()
        r.titleView.text = "收藏"
        r.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onSettingClick(recognizer:))))
        return r
    }()
    
    lazy var collectView: SettingsView = {
        let r = SettingsView()
        r.titleView.text = NSLocalizedString("COLLECTION", comment: "" )
        return r
    }()



}
