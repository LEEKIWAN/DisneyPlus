//
//  SplashRepresentableView.swift
//  DisneyPlus
//
//  Created by 이기완 on 2023/01/13.
//

import Foundation
import SwiftyGif
import SwiftUI

struct SplashRepresentableView: UIViewRepresentable {
    
    let splashRepresentableViewDelegate = SplashRepresentableViewDelegate()
    let gifName = "disneyPlusAnimated.gif"
    
    @Binding var isGIFFinished: Bool
    
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        do {
            let image = try UIImage(gifName: gifName)
            let imageView = UIImageView(gifImage: image, loopCount: 1)
            
            imageView.delegate = splashRepresentableViewDelegate
            
            splashRepresentableViewDelegate.completion = { 
                isGIFFinished = true
            }
            
            view.addSubview(imageView)
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true

            return view            
        } catch {
            print("[SpalshRepresentableView] error occured: \(error.localizedDescription)")
        }
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
}

class SplashRepresentableViewDelegate: SwiftyGifDelegate {
    var completion: (() -> Void)?
    
    func gifDidStop(sender: UIImageView) {
        completion?()
    }
    
    func gifURLDidFinish(sender: UIImageView) {
        completion?()
    }
}
