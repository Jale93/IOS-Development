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
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        label.textAlignment = .center
        label.text = "Let's you in"
        self.view.addSubview(label)
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        
        self.view.addSubview(stack)
        
        stack.spacing = 16
        stack.distribution = .equalSpacing
        stack.axis = .vertical
        
        return stack
    }()
    
    private lazy var orLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.text = "or"
        self.view.addSubview(label)
        return label
    }()
    
    private lazy var loginBtn: UIButton = {
        let btn = UIButton()
        self.view.addSubview(btn)
        btn.backgroundColor = .systemGreen
        btn.layer.cornerRadius = 25
        btn.setTitle("Sign in with password", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        return btn
    }()
    // MARK: - Parent delegates
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(100)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(40)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-40)
        }
        stackView.snp.makeConstraints { make in
            make.top.equalTo(self.titleLabel.snp.bottom).offset(80)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(16)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-16)
        }
        stackView.addArrangedSubview(getButton(title: "Continue with facebook", icon: UIImage(named: "ic_facebook")))
        stackView.addArrangedSubview(getButton(title: "Continue with google", icon: UIImage(named: "ic_google")))
        stackView.addArrangedSubview(getButton(title: "Continue with apple", icon: UIImage(named: "ic_apple")))

        orLabel.snp.makeConstraints { make in
            make.top.equalTo(self.stackView.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }
        loginBtn.snp.makeConstraints { make in
            make.top.equalTo(self.orLabel.snp.top).offset(40)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(50)
        }
    }
    
    //MARK: - Method
    func getButton(title:String ,icon:UIImage?) -> UIView {
        let view = UIView()
        view.snp.makeConstraints { make in
            make.height.equalTo(50)
        }
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 16
        
        let label = UILabel()
        view.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.text = title
        label.textColor = .darkText
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        let image = UIImageView(image: icon)
        view.addSubview(image)
        image.snp.makeConstraints { make in
            make.width.height.equalTo(24)
            make.right.equalTo(label.snp.left).offset(-12)
            make.centerY.equalTo(view.snp.centerY)
        }
        
        return view
    }
}

