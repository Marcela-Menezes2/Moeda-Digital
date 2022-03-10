//
//  CriptoController.swift
//  Moeda Digital
//
//  Created by Marcela Menezes Silva on 09/03/22.
//

import UIKit

class CriptoController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let myArray: NSArray = ["First","Second","Third"]
    private var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height

        myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(myArray[indexPath.row])")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(myArray[indexPath.row])"
        return cell
    }
}

//class CriptoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  //  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //    return 25
    //}
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  //      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//
  //      cell.textLabel?.text = "\(indexPath)"
    //    return cell
    //}

 //   let tableView : UITableView = {
   //         let tableView = UITableView()
   //         tableView.translatesAutoresizingMaskIntoConstraints = false
     //       return tableView
      //  }()

   // override func viewDidLoad() {
   //        super.viewDidLoad()
    //      view.addSubview(tableView)
    //        self.setUpConstraints()
//    }
    
//    required init?(coder: NSCoder) {
 //       fatalError("init(coder:) has not been implemented")
 //   }

        //    func setUpConstraints(){
          //     NSLayoutConstraint.activate([
                
            //    self.tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
              //  self.tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32.0),
                //self.tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32.0),
               // self.tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -32.0)
// ])
            // set delegate and datasource
     //       tableView.delegate = self
       //     tableView.dataSource = self

            // register a defalut cell
    //        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    //    }

        // Note: because this is NOT a subclassed UITableViewController,
        // DataSource and Delegate functions are NOT overridden

        // MARK: - Table view data source

  //      func numberOfSections(in tableView: UITableView) -> Int {
 //           return 10
 //       }


        // MARK: - Table view delegate

 //
            // etc
 //       }

    
  //      }

