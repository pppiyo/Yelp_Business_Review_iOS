//
//  BusinessDetailViewController.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import Foundation
import UIKit

final class BusinessViewController: UIViewController, UITableViewDelegate {

    // MARK: - Properties
    
    @IBOutlet private var tableView: UITableView! {
        didSet {
            // Configure Table View
            tableView.isHidden = true
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    @IBOutlet private var activityIndicatorView: UIActivityIndicatorView! {
        didSet {
            // Configure Activity Indicator View
            activityIndicatorView.hidesWhenStopped = true
        }
    }
    
    // MARK: -
    
    private var businesses: [Business] = [] {
        didSet {
            // Reload Table View
            tableView.reloadData()
            
            // Show/Hide Table View
            tableView.isHidden = businesses.isEmpty
        }
    }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Fetch businesses
        fetchBusinesses()
    }
    
    // MARK: - Helper Methods
    
    private func fetchBusinesses() {
        // Start/Show Activity Indicator View
        activityIndicatorView.startAnimating()
        
        let url = URL(string: "https://cdn.cocoacasts.com/api/businesses/v1/businesses.json")!
        URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
            guard let data = data else {
                print("Unable to Fetch businesses")
                return
            }
            
            do {
                // Decode Response
                let businesses = try JSONDecoder().decode([Business].self, from: data)
                
                // Update Data Source and
                // User Interface on Main Thread
                DispatchQueue.main.async {
                    // Update businesses
                    self?.businesses = businesses
                    
                    // Stop/Hide Activity Indicator View
                    self?.activityIndicatorView.stopAnimating()
                }
            } catch {
                print("Unable to Decode businesses")
            }
        }.resume()
    }

}

extension BusinessViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        businesses.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: BusinessTableViewCell.reuseIdentifier, for: indexPath) as? BusinessTableViewCell else {
            fatalError("Unable to Dequeue Business Table View Cell")
        }
        
        // Fetch Business
        let business = businesses[indexPath.row]

        // Configure Cell
        cell.configure(title: business.name,
                       imgURL: business.imgURL)
        
        return cell
    }

}

extension BusinessViewController {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        Layout.TableView.rowHeight
    }

}

fileprivate extension BusinessViewController {

    enum Layout {
        
        enum TableView {
            static let rowHeight: CGFloat = 90.0
        }
        
    }

}
