//
//  ViewController.swift
//  CryptoTracker
//
//  Created by David [Entei] Xiong on 3/7/19.
//  Copyright © 2019 iosdecal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var changeLabel: UILabel!
    
    @IBOutlet weak var indexChanged: UISegmentedControl!
    
    @IBAction func refresh(_ sender: Any) {
        fetchAndDisplayData()
    }
    
    @IBOutlet weak var refreshOutlet: UIButton!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBAction func segmentedControl(_ sender: Any) {
        switch indexChanged.selectedSegmentIndex {
        case 0:
            currency = "-USD"
            fetchAndDisplayData()
        case 1:
            currency = "-EUR"
            fetchAndDisplayData()
        case 2:
            currency = "-GBP"
            fetchAndDisplayData()
        default:
            break
        }
    }
    
    var prevLabel: String!
    var currency: String! = "-USD"
    var data: Data! = Data()
    var cryptoNames: Array<String>!
    var cryptoCurrency: String!
    var currencyName: String! = "Bitcoin"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        prevLabel = changeLabel.text
        pickerView.delegate = self
        pickerView.dataSource = self
        cryptoNames = Array(data.cryptoData.keys).sorted()
        cryptoCurrency = data.cryptoData["Bitcoin"]
        fetchAndDisplayData()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cryptoNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        cryptoCurrency = data.cryptoData[cryptoNames[row]]
        currencyName = cryptoNames[row]
        return cryptoNames[row]
    }
    
    func fetchAndDisplayData() {
        self.nameLabel.text = currencyName
        let url = "https://api.cryptonator.com/api/ticker/" + cryptoCurrency + currency
        let myUrl = URL(string: url);
        let session = URLSession.shared
        let request = URLRequest(url:myUrl!)
        let task = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if error == nil {
                do {
                    let jsonArray = try? JSONSerialization.jsonObject(with: data!, options: [])
                
                    if let dictionary = jsonArray as? [String: Any] {
                        if let ticker = dictionary["ticker"] as? [String: Any] {
                            if let base = ticker["base"] as? String {
                                DispatchQueue.main.async {
                                    print(base)
                                    self.symbolLabel.text = base
                                }
                            }
                            if let price = ticker["price"] as? String {
                                print(price)
                                DispatchQueue.main.async {
                                    let y = Double(round(1000*Double(price)!)/1000)
                                    self.priceLabel.text = String(y)
                                }
                            }
                            if let change = ticker["change"] as? String {
                                print(change)
                                DispatchQueue.main.async {
                                    self.changeLabel.text = change + "%"
                                    let changeDouble = Double(change)
                                    if (changeDouble! < 0.0) {
                                        self.changeLabel.textColor = UIColor.red
                                    } else {
                                        self.changeLabel.textColor = UIColor.green
                                    }
                                }
                            }
                        }
                    }
                }
            }
        })
        task.resume()
    }
}

