//
//  ViewController.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/25/22.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Business Search"
        
        let backBarButtonItem = UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
        navigationItem.backBarButtonItem = backBarButtonItem
    }
    
}



/*
 override func viewDidLoad() {
 super.viewDidLoad()
 title = "Business Search"
 
 let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200,  height: 50))
 view.addSubview(button)
 
 button.center = view.center;
 button.backgroundColor = .systemBlue
 button.setTitle("Go to view 2", for: .normal)
 button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
 configureItems()
 }
 
 private func configureItems() {
 self.navigationItem.rightBarButtonItem = UIBarButtonItem(
 barButtonSystemItem: .add, target: self, action: nil)
 }
 
 @objc func didTapButton() {
 let vc = UIViewController()
 vc.title = "view 2"
 vc.view.backgroundColor = .systemMint
 vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "sign out", style: .done, target: self, action: nil)
 navigationController?.pushViewController(vc, animated: true)
 }
 */
