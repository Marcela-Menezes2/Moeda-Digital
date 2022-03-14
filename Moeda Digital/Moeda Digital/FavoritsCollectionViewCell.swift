//
//  FavoritsCollectionViewCell.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 14/03/22.
//

import UIKit

class FavoritsCollectionViewCell: UICollectionViewCell {
   
        var titleLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Bitcoin"
            label.font = UIFont(name: "AvenirNext-Medium", size: 18.0) ?? UIFont.systemFont(ofSize: 18.0)
            label.numberOfLines = 1
            label.textColor = UIColor.white
            label.textAlignment = .center
            return label
        }()
        
        var subtitleLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "BTC"
            label.font = UIFont(name: "AvenirNext-Medium", size: 12.0) ?? UIFont.systemFont(ofSize: 12.0)
            label.numberOfLines = 1
            label.textColor = UIColor.white
            label.textAlignment = .center
            return label
        }()

        var valueLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "31.010,20"
            label.font = UIFont(name: "AvenirNext-Medium", size: 12.0) ?? UIFont.systemFont(ofSize: 12.0)
            label.numberOfLines = 1
            label.textColor = UIColor.white
            label.textAlignment = .center
            return label
        }()

        var iconCoin: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = true
            imageView.contentMode = .scaleAspectFit
            imageView.clipsToBounds = true
            return imageView
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            contentView.addSubview(titleLabel)
            contentView.addSubview(subtitleLabel)
            contentView.addSubview(valueLabel)
            contentView.addSubview(iconCoin)
            
            contentView.backgroundColor = UIColor(red: 141/255, green: 149/255, blue: 98/255, alpha: 1.0)
            contentView.layer.cornerRadius = 12
            
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


