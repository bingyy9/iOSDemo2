//
//  SettingsView.swift
//  iOSDemo2
//
//  Created by bingy on 1/18/24.
//

import UIKit

class SettingsView: UIView {

    init() {
        super.init(frame: CGRect.zero)
        innterInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        innterInit()
    }
    
    func innterInit() {
        backgroundColor = .white
        addSubview(iconView)
        addSubview(titleView)
        addSubview(moreIconView)
    }
    
    //当视图加入父视图或从父视图移除时
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        iconView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        titleView.snp.makeConstraints { make in
            make.left.equalTo(iconView.snp.right).offset(16)
            make.centerY.equalToSuperview()
        }
        moreIconView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
    }
    
    lazy var iconView: UIImageView = {
        let r = UIImageView()
        r.image = UIImage(named: "Logo")
        return r
    }()
    
    /// 标题
    lazy var titleView: UILabel = {
        let r = UILabel()
        r.text = "shoucan"
        return r
    }()
    
    lazy var moreIconView: UIImageView = {
        let r = UIImageView()
        r.image = UIImage(named: "Logo")
        return r
    }()
}
