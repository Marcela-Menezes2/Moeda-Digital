//
//  CriptoTableViewCell.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 09/03/22.
//

import UIKit

struct CriptoTableViewCellViewModel{
    let name: String
    let symbol: String
    let price: String
}

class CriptoTableViewCell: UITableViewCell {
static let identifier = "CriptoTableViewCell"
    
    // Subviews
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17)
        label.textColor = .white
        return label
    }()
    
    private let symbolLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17)
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17)
        return label
    }()
    
    // init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
        contentView.addSubview(symbolLabel)
        contentView.addSubview(priceLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameLabel.sizeToFit()
        priceLabel.sizeToFit()
        symbolLabel.sizeToFit()
        
      //  nameLabel.frame = CGRect(
    //x: <#T##CGFloat#>,
  //  y: <#T##CGFloat#>,
//    width: <#T##CGFloat#>,
//    height: <#T##CGFloat#>)
    }
    
    // Configure
    
    func configure(with viewModel: CriptoTableViewCellViewModel) {
        nameLabel.text = viewModel.name
        priceLabel.text = viewModel.price
        symbolLabel.text = viewModel.symbol
    }
}
