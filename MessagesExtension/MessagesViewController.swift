//
//  MessagesViewController.swift
//  MessagesExtension
//
//  Created by 学左 on 6/15/16.
//  Copyright © 2016 zx. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    var browserViewController: NatureStickerBrowserViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        browserViewController = NatureStickerBrowserViewController(stickerSize: .regular)
        browserViewController.view.frame = self.view.frame
        
        self.addChildViewController(browserViewController)
        self.view.addSubview(browserViewController.view)
        
        browserViewController.loadStickers()
        browserViewController.stickerBrowserView.reloadData()
        
        browserViewController.changeBackgroundColor(color: UIColor.cyan())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
