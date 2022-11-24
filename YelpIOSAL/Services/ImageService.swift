//
//  ImageService.swift
//  YelpIOSAL
//
//  Created by Amy Lee on 11/23/22.
//

import Foundation
import UIKit

final class ImageService {

    func image(for url: URL, completion: @escaping (UIImage?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, _ in
            // Helper
            var image: UIImage?

            defer {
                // Execute Handler on Main Thread
                DispatchQueue.main.async {
                    // Execute Handler
                    completion(image)
                }
            }

            if let data = data {
                // Create Image from Data
                image = UIImage(data: data)
            }
        }.resume()
    }
}
