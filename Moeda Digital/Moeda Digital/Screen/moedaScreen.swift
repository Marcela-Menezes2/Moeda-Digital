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
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        label.text = dateFormatter.string(from: Date.now)
        return label
    }()

    lazy var search: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.isTranslucent = true
        search.barStyle = .black
        search.searchTextField.font = UIFont.systemFont(ofSize: 10)
        search.tintColor = .white
        search.placeholder = "Search"
        search.delegate = self
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
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
}

extension MoedaScreen: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var nome = ""
//
//        if isSearch{
//            nome = dadosFiltrados[indexPath.row]
//        }else{
//            nome = dados[indexPath.row]
//        }
        
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

extension MoedaScreen:UISearchBarDelegate{
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        isSearch = true
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        isSearch = false
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        isSearch = false
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        isSearch = false
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        if searchText.count != 0{
//            dadosFiltrados = dados.filter({ (text) -> Bool in
//                let tmp: NSString = text as NSString
//                let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
//                return range.location != NSNotFound
//            })
//            if dadosFiltrados.count == 0{
//                isSearch = false
//            }else{
//                isSearch = true
//            }
//            self.tableView.reloadData()
//            return
//        }
//        isSearch = false
//        self.tableView.reloadData()
        if searchText.count == 0{
            isSearch = false
            self.tableView.reloadData()
        }else{
            dadosFiltrados = dados.filter({ (text) -> Bool in
                let tmp: NSString = text as NSString
                let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
                return range.location != NSNotFound
            })
            if dadosFiltrados.count == 0{
                isSearch = false
            }else{
                isSearch = true
            }
            self.tableView.reloadData()
        }
    }
}
