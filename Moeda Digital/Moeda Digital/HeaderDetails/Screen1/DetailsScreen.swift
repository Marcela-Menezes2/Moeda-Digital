//
//  DetailsScreen.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 07/03/22.
//

import UIKit

class DetailsScreen: UIView {


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
    }
    
    private func configBackGround(){
        self.backgroundColor = UIColor(red: 141/255, green: 149/255, blue: 98/255, alpha: 1.0)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
