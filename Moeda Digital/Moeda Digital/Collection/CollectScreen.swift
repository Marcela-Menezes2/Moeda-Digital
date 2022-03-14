//
//  CollectScreen.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 11/03/22.
//

import UIKit

class CollectScreen: UIView {

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
    
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .red
        collectionView.delaysContentTouches = false
        let layout: UICollectionViewLayout = UICollectionViewLayout.init()
       // layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: false)
        return collectionView
    }()

    override init(frame: CGRect){
        super.init(frame: frame)
        self.addSubview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.addSubview(collectionView)
        self.addSubview(moedaLabel)
        self.addSubview(dataLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
        
            self.moedaLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 14),
            self.moedaLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
         
            self.dataLabel.topAnchor.constraint(equalTo: self.moedaLabel.bottomAnchor, constant: 10),
            self.dataLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.dataLabel.heightAnchor.constraint(equalToConstant: 10),
        
        ])
    }
}
