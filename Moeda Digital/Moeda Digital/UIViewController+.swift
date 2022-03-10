//
//  UIViewController+.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 10/03/22.
//

import UIKit

extension UIViewController {
    func setTitle(_ title: String, subtitle: String) {
        let rect = CGRect(x: 0, y: 0, width: 400, height: 50)
        let titleSize: CGFloat = 20     // adjust as needed
        let subtitleSize: CGFloat = 15

        let label = UILabel(frame: rect)
        label.backgroundColor = .clear
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .black

        let text = NSMutableAttributedString()
        text.append(NSAttributedString(string: title, attributes: [.font : UIFont.boldSystemFont(ofSize: titleSize)]))
        text.append(NSAttributedString(string: "\n\(subtitle)", attributes: [.font : UIFont.systemFont(ofSize: subtitleSize)]))
        label.attributedText = text
        
        self.navigationItem.titleView = label

    }

}
