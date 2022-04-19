//
//  ViewController.swift
//  Session 1
//
//  Created by Karim Karimov on 05.04.22.
//
import UIKit
import SnapKit

class ViewController: UIViewController {
    let vm = MainViewModel()
    
    //MARK: - UIComponents
    
    private lazy var redView: UIView = {
        let view = UIView()
        
        view.backgroundColor = .systemRed
        
        return view
    }()
    private lazy var textLabel:UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = .lightGray
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    private lazy var textLabel2:UILabel = {
        let label = UILabel()
//        label.numberOfLines = 1
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = .lightGray
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    private lazy var scrollView:UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .darkGray
        
        return view
    }()
    private lazy var stackView:UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .equalSpacing
        view.spacing = 16
        view.backgroundColor = .lightGray
        
        return view
    }()
    // MARK: - Parent delegates
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = .white
//
//        self.view.addSubview(self.redView)
//
//        self.redView.snp.makeConstraints { make in
////            make.width.equalTo(150)
////            make.height.equalTo(100)
////            make.left.equalTo(self.view.snp.left).offset(20)
////            make.right.equalTo(self.view.snp.right).offset(-20)
////            make.top.equalTo(self.view.snp.top).offset(20)
////            make.bottom.equalTo(self.view.snp.bottom).offset(-20)
//
//            // Landscape mode support etsin deye
//            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(20)
//            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-20)
//            // wifi charger ustune chixmasin deye
//            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)
//            // ashagidan xetden yuxariya 20 mesafe atsin deye
//            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-20)
//        }
//
//        self.redView.addSubview(self.textLabel)
//
//        self.textLabel.snp.makeConstraints { make in
//            make.left.equalToSuperview().offset(16)
////            make.top.equalToSuperview().offset(16)
////            make.centerX.equalToSuperview()
////            make.centerY.equalToSuperview()
////            make.right.lessThanOrEqualTo(self.redView.snp.right).offset(-16)
//
//            make.bottom.equalTo(self.redView.snp.centerY)
//            make.right.equalTo(self.redView.snp.centerX).offset(-8)
//            make.left.equalToSuperview().offset(16)
//        }
//        let shortText = "Swift Package Manager"
//        let mediumText = "Swift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package "
        let longText = "Swift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package ManagerSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package Manager Swift Package Manager\nSwift Package"
//
        self.textLabel.text = longText
//
//        self.redView.addSubview(self.textLabel2)
//        self.textLabel2.snp.makeConstraints { make in
////            make.left.equalTo(self.textLabel.snp.left)
////            make.top.equalTo(self.textLabel.snp.bottom).offset(8)
////            make.right.lessThanOrEqualTo(self.redView.snp.right).offset(-16)
//            make.bottom.equalTo(self.redView.snp.centerY)
//            make.left.equalTo(self.redView.snp.centerX).offset(8)
//            make.right.equalToSuperview().offset(-16)
//        }
        self.textLabel2.text = "Swift Package Manager Swift Package Manager Swift PackageSwift Package Manager Swift Package Manager Swift PackageSwift Package Manager Swift Package Manager Swift PackageSwift Package Manager Swift Package Manager Swift PackageManager"
        
        self.view.addSubview(scrollView)
        self.scrollView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }
        
        self.scrollView.addSubview(self.stackView)
        
        self.stackView.snp.makeConstraints { make in
            make.top.equalTo(self.scrollView.contentLayoutGuide.snp.top).offset(16)
            make.bottom.equalTo(self.scrollView.contentLayoutGuide.snp.bottom).offset(-16)
            make.left.equalTo(self.scrollView.contentLayoutGuide.snp.left).offset(16)
//            make.right.equalTo(self.scrollView.contentLayoutGuide.snp.right)
            make.centerX.equalTo(self.scrollView.snp.centerX)
        }
        self.stackView.addArrangedSubview(self.textLabel)
        self.stackView.addArrangedSubview(self.textLabel2)
    }
    
}

