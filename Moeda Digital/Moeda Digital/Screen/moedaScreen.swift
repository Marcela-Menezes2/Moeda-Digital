//
//  moedaScreen.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 05/03/22.
//

import UIKit

protocol MoedaScreenProtocol: AnyObject {
    func actionCadastrarButton()
   
}

class MoedaScreen: UIView {
  //  let navigationController = UINavigationController()
    var onVoltar: (() -> Void)!
    var detalhes: DetalhesViewController = DetalhesViewController()
   
    let cellId = "celulaMoeda"
    let dados = ["Moacir", "Ana", "Tatiana", "Natanael", "Joao", "Pedro", "Mallu Cristina", "Paulo", "Lucas", "Marcela", "Bruna" ]
    
    private weak var delegate: MoedaScreenProtocol?
    func delegate(delegate: MoedaScreenProtocol?) {
        self.delegate = delegate
    }
    
    let searchBar = UISearchBar()
    let categoryCellid = UICollectionViewController().self

    lazy var moedaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Moeda Digital"
        return label
    }()
    
      lazy var dataLabel: UILabel = {
       let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
       label.textColor = .white
       label.font = UIFont.systemFont(ofSize: 10)
       label.text = "4 jan 2020"
        return label
    }()

    lazy var search: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.isTranslucent = true
        search.barStyle = .black
        search.searchTextField.font = UIFont.systemFont(ofSize: 10)
        search.tintColor = .white
        search.text = "Search"
        return search
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView(frame: .zero, style: .plain)
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .black
        tv.delegate = self
        tv.dataSource = self
        tv.register(CelulaTableViewCell.self, forCellReuseIdentifier: self.cellId)
        tv.accessibilityLabel = "Lista de cripto moedas"
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.moedaLabel)
        self.addSubview(self.dataLabel)
        self.addSubview(self.search)
        self.addSubview(tableView)
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    func setUpConstraints(){
       NSLayoutConstraint.activate([
        
        self.moedaLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 14),
        self.moedaLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
     
        self.dataLabel.topAnchor.constraint(equalTo: self.moedaLabel.bottomAnchor, constant: 10),
        self.dataLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        self.dataLabel.heightAnchor.constraint(equalToConstant: 10),
       
        self.search.topAnchor.constraint(equalTo: self.dataLabel.bottomAnchor, constant: 14),
        self.search.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
        self.search.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -6),
        
        self.tableView.topAnchor.constraint(equalTo: search.bottomAnchor, constant: 10),
        self.tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        self.tableView.widthAnchor.constraint(equalTo: self.widthAnchor),
        self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
     ])
  }
}

extension MoedaScreen: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.dados.count
    }
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CelulaTableViewCell
 
    let nome = dados[indexPath.row]
    
    cell.name.text = nome
    cell.backgroundColor = .black
    
    return cell
  
   }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("DEu Certo")
       
    }

  //  self.navigationController?.pushViewController(detalhes, animated: true)
    // MARK: - AQUI
    // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // tableView(UITableView, didSelectRowAt: navigationController)
   // }
}

    

