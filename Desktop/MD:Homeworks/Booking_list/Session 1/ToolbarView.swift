//
//  ToolbarView.swift
//  Session 1
//
//  Created by Jala Mammadli on 21.04.22.
//

import UIKit
import SnapKit

class ToolbarView: UIView {
    
    //MARK: - UIComponents
    private lazy var label:UILabel = {
        var label = UILabel()
        
        addSubview(label)
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.text = "Recently Booked"
        
        return label
    }()
    
    private lazy var gridImageView: UIImageView = {
        let view = UIImageView()
        
        addSubview(view)
        view.backgroundColor = .systemGreen
        
        return view
    }()
    
    private lazy var listImageView: UIImageView = {
        let view = UIImageView()
        
        addSubview(view)
        view.backgroundColor = .systemGray
        
        return view
    }()
    
    //initWithFrame to init view from code
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    //common func to init our view
    private func setupView() {
        backgroundColor = .white
        self.label.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(16)
            make.centerY.equalToSuperview()
        }
        self.listImageView.snp.makeConstraints { make in
            make.width.height.equalTo(36)
            make.right.equalToSuperview().offset(-16)
            make.centerY.equalTo(label.snp.centerY)
        }
        self.gridImageView.snp.makeConstraints { make in
            make.width.height.equalTo(36)
            make.right.equalTo(listImageView.snp.left).offset(-16)
            make.centerY.equalTo(label.snp.centerY)
        }
    }
}
