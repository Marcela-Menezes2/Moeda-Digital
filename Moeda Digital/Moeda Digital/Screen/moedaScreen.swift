//
//  moedaScreen.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 05/03/22.
//

import UIKit

class MoedaScreen: UIView {
    
    let searchBar = UISearchBar()

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

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.moedaLabel)
        self.addSubview(self.dataLabel)
        self.addSubview(self.search)
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
        
        self.moedaLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 14),
        self.moedaLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
     
        self.dataLabel.topAnchor.constraint(equalTo: self.moedaLabel.bottomAnchor, constant: 10),
        self.dataLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        self.dataLabel.heightAnchor.constraint(equalToConstant: 10),
               
        self.search.topAnchor.constraint(equalTo: self.dataLabel.bottomAnchor, constant: 14),
        self.search.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
        self.search.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -6)
     ])
  }
}
