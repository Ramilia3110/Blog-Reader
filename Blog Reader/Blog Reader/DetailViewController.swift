//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Ramilia Imankulova on 11/12/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit
import WebKit


class DetailViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    

    func configureView() {
        // Update the user interface for the detail item.
       
        if let detail = self.detailItem {
            self.title = detail.value(forKey: "title") as? String
            if let blogWebView = self.webView {
                blogWebView.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
        
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

