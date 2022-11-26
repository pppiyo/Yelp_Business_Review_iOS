//
//  LandscapeTableViewCell.swift
//  Landscapes
//
//  Created by Bart Jacobs on 20/04/2021.
//

import UIKit

final class BusinessTableViewCell: UITableViewCell {

    // MARK: - Static Properties
    
    static var reuseIdentifier: String {
        String(describing: self)
    }
    
    // MARK: - Properties
    
    @IBOutlet private var titleLabel: UILabel!
    
    // MARK: -
    
    @IBOutlet private var thumbnailImageView: UIImageView! {
        didSet {
            // Configure Thumbnail Image View
            thumbnailImageView.contentMode = .scaleAspectFill
        }
    }
    
    // MARK: -
    
    @IBOutlet private var activityIndicatorView: UIActivityIndicatorView!
    
    // MARK: -
    
    private lazy var imageService = ImageService()
    
    // MARK: -
    
    private var imageRequest: Cancellable?
    
    // MARK: - Public API

    func configure(title: String, imgURL: URL) {
        // Configure Title Label
        titleLabel.text = title
        
        // Animate Activity Indicator View
        activityIndicatorView.startAnimating()
        
        // Request Image Using Image Service
        imageRequest = imageService.image(for: imgURL) { [weak self] image in
            // Update Thumbnail Image View
            self?.thumbnailImageView.image = image
        } as! any Cancellable
    }

    // MARK: - Overrides

    override func prepareForReuse() {
        super.prepareForReuse()
        
        // Reset Thumbnail Image View
        thumbnailImageView.image = nil
        
        // Cancel Image Request
        imageRequest?.cancel()
    }

}
