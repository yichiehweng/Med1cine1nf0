//
//  DetailViewController.swift
//  MedicineInfo
//
//  Created by 翁義傑 on 2018/2/11.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var gernricNameLabel: UILabel!
    @IBOutlet weak var brandNameLabel: UILabel!
    @IBOutlet weak var normalDoseLabel: UILabel!
    @IBOutlet weak var maxdoseLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label1 = gernricNameLabel {
                label1.text = detail.genericName
            }
            if let label2 = brandNameLabel {
                label2.text = detail.brandName
            }
            if let label3 = normalDoseLabel {
                label3.text = detail.nomalDosage
            }
            if let label4 = maxdoseLabel {
                label4.text = detail.maxDosage
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Medicine? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    @IBAction func showWebView(sender: AnyObject) {
        self.performSegue(withIdentifier: "showWebView", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "showWebView") {
            if let destinationVC=segue.destination as? WebViewController{
                if let detail = detailItem {
                    destinationVC.name=detail.genericName
                }                
            }
            
        }
    }
}

