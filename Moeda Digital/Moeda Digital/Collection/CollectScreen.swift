//
//  CollectScreen.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 11/03/22.
//

import UIKit

class CollectScreen: UIViewController {
    
     var moedaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Moeda Digital"
        return label
    }()
    
      var dataLabel: UILabel = {
       let label = UILabel()
       label.translatesAutoresizingMaskIntoConstraints = false
       label.textColor = .white
       label.font = UIFont.systemFont(ofSize: 10)
       label.text = "4 jan 2020"
        return label
          
    }()

    
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        collectionView.backgroundColor = .blue
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.topAnchor.constraint(equalTo: dataLabel.topAnchor, constant: 60).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: view.frame.height/2).isActive = true
       
       

        view.addSubview(moedaLabel)
        moedaLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        moedaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        moedaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        
        view.addSubview(dataLabel)
        dataLabel.topAnchor.constraint(equalTo: moedaLabel.topAnchor, constant: 40).isActive = true
        dataLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
        dataLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        
    }
}

extension CollectScreen: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = UIColor(red: 141/255, green: 149/255, blue: 98/255, alpha: 1.0)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
}
