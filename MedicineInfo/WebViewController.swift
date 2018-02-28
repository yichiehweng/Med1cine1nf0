//
//  WebViewController.swift
//  MedicineInfo
//
//  Created by 翁義傑 on 2018/2/13.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class WebViewController: UIViewController,UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        if let theUrl = URL (string: "https://druginfo.nlm.nih.gov/drugportal/name/\(name!)"){
        //if let theUrl = URL (string: "https://druginfo.nlm.nih.gov"){
        let request = URLRequest(url: theUrl);
        self.webView.loadRequest(request);
        self.webView.scalesPageToFit = true;
        }else{
            print("URL not found:" + name!);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
