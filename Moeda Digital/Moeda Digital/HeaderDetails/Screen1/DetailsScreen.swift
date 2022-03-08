//
//  DetalhesScreen.swift
//  LoginViewCode
//
//  Created by Marcela Menezes Silva on 07/03/22.
//

import UIKit

class DetalhesScreen: UIView {
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Back"), for: .normal)
        return button
    }()
    
    lazy var voltarLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "Voltar"
        return label
    }()
    
        lazy var btcLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 17)
            label.text = "BTC"
            return label
        }()
    
    lazy var imagemMoeda: UIImageView = {
        let imagem = UIImageView()
        return imagem
    }()
    
    lazy var numLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "NUMERO"
        return label
    }()
        
   
    
    lazy var viewPreta: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    lazy var adicionarButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ADICIONAR", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.backgroundColor = UIColor(red: 141/255, green: 149/255, blue: 98/255, alpha: 1.0)
        return button
    }()
    
    
    lazy var volumeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "volumes negociados"

       
        return label
        
  
        
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configLabel()
        self.configSuperView()
        self.configView()
        self.configSuperLabel()
        self.configImageView()
        self.setUpContraints()
        
    }
    
    
    private func configSuperView() {
        self.addSubview(self.backButton)
        self.addSubview(self.adicionarButton)
    }
    
    private func configSuperLabel() {
        self.addSubview(self.volumeLabel)
    }
    
    private func configLabel() {
        self.addSubview(self.voltarLabel)
        self.addSubview(self.btcLabel)
        self.addSubview(self.numLabel)
    }
    
    private func configImageView() {
        self.addSubview(self.imagemMoeda)
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 141/255, green: 149/255, blue: 98/255, alpha: 1.0)
    }
    
    private func configView() {
        self.addSubview(self.viewPreta)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private func setUpContraints(){
        NSLayoutConstraint.activate([
        
            
            self.backButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            self.voltarLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            self.voltarLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35),
            
            self.btcLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            self.btcLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
       
            
            self.adicionarButton.topAnchor.constraint(equalTo: self.voltarLabel.topAnchor, constant: 150),
            self.adicionarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            self.adicionarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -50),
          //  self.adicionarButton.heightAnchor.constraint(equalToConstant: 20),
            
            self.viewPreta.topAnchor.constraint(equalTo: self.adicionarButton.bottomAnchor, constant: 30),
            self.viewPreta.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            self.viewPreta.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            self.viewPreta.heightAnchor.constraint(equalToConstant: 700),
            
         //  self.volumeLabel.topAnchor.constraint(equalTo: self.viewPreta.topAnchor, constant: 25),
            self.volumeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.volumeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
          // self.volumeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            self.volumeLabel.heightAnchor.constraint(equalToConstant: 320),
        
        ])
    }
}
