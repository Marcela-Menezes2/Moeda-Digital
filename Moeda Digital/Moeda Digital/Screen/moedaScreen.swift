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
   let navigationController = UINavigationController()
   var onVoltar: (() -> Void)!
   var detalhes: DetalhesViewController = DetalhesViewController()
   
    var onSelectedMoeda: ((_ viewModel: CryptoTableViewCellViewModel) -> Void)?
    
    let cellId = "CryptoTableViewCell"
    let dados = [" "]
    var dadosFiltrados = [""]
    
    private weak var delegate: MoedaScreenProtocol?
    func delegate(delegate: MoedaScreenProtocol?) {
        self.delegate = delegate
    }
   
    let searchBar = UISearchBar()
    let categoryCellid = UICollectionViewController().self
    
    var viewModels = [CryptoTableViewCellViewModel]()
    
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.locale = .current
        formatter.allowsFloats = true
        formatter.numberStyle = .currency
        formatter.formatterBehavior = .default
        
        return formatter
    }()

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
        search.searchBarStyle = .default
        search.placeholder = "Search"
        search.searchTextField.textColor = .white
        search.sizeToFit()
        search.barTintColor = UIColor(red: 1/255, green: 1/255, blue: 1/255, alpha: 1.0)
        search.isTranslucent = false
//        search.delegate = self
        
        return search
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView(frame: .zero, style: .plain)
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .black
        tv.delegate = self
        tv.dataSource = self
        tv.register(CryptoTableViewCell.self, forCellReuseIdentifier: self.cellId)
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
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    func setUpConstraints(){
       NSLayoutConstraint.activate([
        
        self.moedaLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
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

extension MoedaScreen: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModels.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
             withIdentifier: CryptoTableViewCell.identifier,
             for: indexPath
         )as? CryptoTableViewCell else {
             fatalError()
         }
        
        cell.configure(with: viewModels[indexPath.row])
        
        return cell
    }
    
        }


extension MoedaScreen: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewModel = self.viewModels[indexPath.row] 
        
        onSelectedMoeda?(viewModel)
    }
}
