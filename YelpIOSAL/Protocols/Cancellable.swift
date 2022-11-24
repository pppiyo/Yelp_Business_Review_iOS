//
//  Cancellable.swift
//  Landscapes
//
//  Created by Bart Jacobs on 21/04/2021.
//

import Foundation

protocol Cancellable {

    // MARK: - Methods
    
    func cancel()

}

extension URLSessionTask: Cancellable {
    
}
