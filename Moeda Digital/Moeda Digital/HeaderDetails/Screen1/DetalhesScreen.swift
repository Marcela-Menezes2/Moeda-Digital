//
//  DetalhesScreen.swift
//  LoginViewCode
//
//  Created by Marcela Menezes Silva on 07/03/22.
//

import UIKit

protocol DetalhesScreenProtocol:AnyObject{
    func actionBackButton()
    func actionCadastrarButton()
}

class DetalhesScreen: UIView {
    weak var delegate:DetalhesScreenProtocol?
    func delegate(delegate:DetalhesScreenProtocol?){
        self.delegate = delegate
    }
   
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Back"), for: .normal)
        button.addTarget(self, action: #selector(self.tappedBackButton), for: .touchUpInside)
        return button
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
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(named: "criptomoeda")
        return imagem
    }()
    
    lazy var imagMoeda: UIImageView = {
        let imagem = UIImageView()
        imagem.translatesAutoresizingMaskIntoConstraints = false
        imagem.image = UIImage(named: "star")
        imagem.isHidden = true
        return imagem
    }()
    
    lazy var numLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "$31,010.20"
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
        button.setTitle("Adicionar", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.backgroundColor = UIColor(red: 141/255, green: 149/255, blue: 98/255, alpha: 1.0)
        button.addTarget(self, action: #selector(self.tappedAdicionarButton), for: .touchUpInside)
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
    
    lazy var horaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Última Hora"
        return label
    }()
    
    lazy var mesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Última Mês"
        return label
    }()
    
    lazy var anoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Última Ano"
        return label
    }()
    
    lazy var valor1Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "123,456.78"
        return label
    }()
    
    lazy var valor2Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "123,456.78"
        return label
    }()
    
    lazy var valor3Label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "123,456.78"
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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    private func configSuperView() {
        self.addSubview(self.backButton)
        self.addSubview(self.adicionarButton)
    }
    
    private func configSuperLabel() {
        self.addSubview(self.volumeLabel)
        self.addSubview(self.horaLabel)
        self.addSubview(self.mesLabel)
        self.addSubview(self.anoLabel)
        self.addSubview(self.valor1Label)
        self.addSubview(self.valor2Label)
        self.addSubview(self.valor3Label)
    }
    
    private func configLabel() {
        self.addSubview(self.btcLabel)
        self.addSubview(self.numLabel)
    }
    
    private func configImageView() {
        self.addSubview(self.imagemMoeda)
        self.addSubview(self.imagMoeda)
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 141/255, green: 149/255, blue: 98/255, alpha: 1.0)
    }
    
    private func configView() {
        self.addSubview(self.viewPreta)
    }
    
    @objc private func tappedBackButton() {
        self.delegate?.actionBackButton()
        
   }
    
    @objc private func tappedAdicionarButton(sender: UIButton!) {
        self.delegate?.actionCadastrarButton()
        if !imagMoeda.isHidden{
            adicionarButton.setTitle("Adicionar", for: .normal)
            imagMoeda.isHidden = true
        }else{
            adicionarButton.setTitle("Remover", for: .normal)
            imagMoeda.isHidden = false
        }
    }
    
    private func setUpContraints(){
        NSLayoutConstraint.activate([
        
            self.backButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            self.backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            self.btcLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            self.btcLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.imagemMoeda.topAnchor.constraint(equalTo: self.btcLabel.topAnchor, constant: 50),
            self.imagemMoeda.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 125),
            self.imagemMoeda.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -125),
            self.imagemMoeda.heightAnchor.constraint(equalToConstant: 30),
            
            self.numLabel.topAnchor.constraint(equalTo: self.imagemMoeda.topAnchor, constant: 30),
            self.numLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.numLabel.heightAnchor.constraint(equalToConstant: 20),
       
            self.imagMoeda.topAnchor.constraint(equalTo: self.topAnchor, constant: 55),
            self.imagMoeda.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            self.imagMoeda.heightAnchor.constraint(equalToConstant: 20),
            
            self.adicionarButton.topAnchor.constraint(equalTo: self.numLabel.safeAreaLayoutGuide.topAnchor),
            self.adicionarButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            self.adicionarButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -50),
            self.adicionarButton.heightAnchor.constraint(equalToConstant: 50),
         
            self.viewPreta.topAnchor.constraint(equalTo: self.adicionarButton.bottomAnchor, constant: 20),
            self.viewPreta.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            self.viewPreta.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            self.viewPreta.heightAnchor.constraint(equalToConstant: 500),
            
            self.volumeLabel.topAnchor.constraint(equalTo: self.adicionarButton.bottomAnchor, constant: 30),
            self.volumeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.volumeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.volumeLabel.heightAnchor.constraint(equalToConstant: 40),
            
            self.horaLabel.topAnchor.constraint(equalTo: self.volumeLabel.bottomAnchor, constant: 15),
            self.horaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            self.mesLabel.topAnchor.constraint(equalTo: self.horaLabel.bottomAnchor, constant: 45),
            self.mesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            self.anoLabel.topAnchor.constraint(equalTo: self.mesLabel.bottomAnchor, constant: 45),
            self.anoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            self.valor1Label.topAnchor.constraint(equalTo: self.volumeLabel.bottomAnchor, constant: 15),
            self.valor1Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            self.valor2Label.topAnchor.constraint(equalTo: self.valor1Label.bottomAnchor, constant: 45),
            self.valor2Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            self.valor3Label.topAnchor.constraint(equalTo: self.valor2Label.bottomAnchor, constant: 45),
            self.valor3Label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.valor3Label.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
