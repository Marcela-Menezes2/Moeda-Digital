//
//  CelulaTableView.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 10/03/22.
//

import Foundation
import UIKit

class CelulaTableViewCell: UITableViewCell {
    
    let name: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        lb.textColor = .white
        return lb
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(name)
        
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            name.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10)
        
        ])
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
}

