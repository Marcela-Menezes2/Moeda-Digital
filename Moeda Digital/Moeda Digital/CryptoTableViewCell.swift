//
//  CryptoTableViewCell.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 13/03/22.
//
import UIKit

struct CryptoTableViewCellViewModel{

  let name: String
  let symbol: String
  let price: String
<<<<<<< HEAD
  let iconURL: URL?
=======
//  let iconURL: URL?
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)
}


class CryptoTableViewCell: UITableViewCell {
    static let identifier = "CryptoTableViewCell"
    let coinImage: UIImageView = {
        let iv = UIImageView()
<<<<<<< HEAD
        iv.image = UIImage(named: "Bitcoin")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
    
=======
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)
        
        return iv
    }()
    
    let nameBit: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        lb.textColor = .white
        
        return lb
    }()
    
    var shortName: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        lb.textColor = .white
        
        return lb
    }()
    
    var priceBit:  UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        lb.textColor = .white
        lb.textAlignment = .right
        
        return lb
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(coinImage)
        contentView.addSubview(nameBit)
        contentView.addSubview(shortName)
        contentView.addSubview(priceBit)

<<<<<<< HEAD
        coinImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        coinImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6).isActive = true
        coinImage.widthAnchor.constraint(equalToConstant: 25).isActive = true
        coinImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        NSLayoutConstraint.activate([
            nameBit.topAnchor.constraint(equalTo: coinImage.topAnchor),
=======
        
        
        NSLayoutConstraint.activate([
//            nameBit.topAnchor.constraint(equalTo: coinImage.topAnchor),
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)
            nameBit.leftAnchor.constraint(equalTo: coinImage.rightAnchor, constant: 12),
            nameBit.widthAnchor.constraint(equalToConstant: 100),
            
            shortName.topAnchor.constraint(equalTo: nameBit.bottomAnchor, constant: 4),
            shortName.leftAnchor.constraint(equalTo: coinImage.rightAnchor, constant: 12),
            shortName.widthAnchor.constraint(equalToConstant: 100),
            
            priceBit.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            priceBit.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
<<<<<<< HEAD
            priceBit.widthAnchor.constraint(equalToConstant: 120)
=======
            priceBit.widthAnchor.constraint(equalToConstant: 120),
            
            coinImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            coinImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6),
            coinImage.widthAnchor.constraint(equalToConstant: 25),
            coinImage.heightAnchor.constraint(equalToConstant: 25)
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)

        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
         super.setSelected(selected, animated: animated)

         if !selected {
            contentView.backgroundColor = .black
         } else {
             contentView.backgroundColor = .black
         }
     }
    
    func configure(with viewModel: CryptoTableViewCellViewModel){
      nameBit.text = viewModel.name
      priceBit.text = viewModel.price
      shortName.text = viewModel.symbol

<<<<<<< HEAD
//        debugPrint(viewModel.iconURL)
      if let url = viewModel.iconURL{
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
          if let data = data {
            DispatchQueue.main.async {
              self?.coinImage.image = UIImage(data: data)

            }

          }

        }

        task.resume()

      }
=======
//      if let url = viewModel.iconURL{
//        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
//          if let data = data {
//            DispatchQueue.main.async {
//              self?.coinImage.image = UIImage(data: data)
//
//            }
//
//          }
//
//        }
//
//        task.resume()
//
//      }
>>>>>>> 53bcb40 (Att de várias funções. Sim eu me baguncei todo com as branchs)

    }
}



  

  
