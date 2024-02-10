//
//  HeroHeaderView.swift
//  Netflix
//
//  Created by mehdimagerramov on 09.02.2024.
//

import UIKit

class HeroHeaderView: UIView {
    
    private let playButton = UIButton()
    
    private let downloadButton = UIButton()

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "ghost")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        //addGradient()
        buttonConfigure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ UIColor.clear.cgColor, UIColor.systemBackground.cgColor ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    private func buttonConfigure() {
        addSubview(playButton)
        addSubview(downloadButton)
        playButton.setTitle("play", for: .normal)
        playButton.titleLabel?.font = .preferredFont(forTextStyle: .extraLargeTitle2)
        playButton.layer.cornerRadius = 8
        playButton.backgroundColor = .systemGreen
        playButton.translatesAutoresizingMaskIntoConstraints = false
        
        downloadButton.setTitle("download", for: .normal)
        downloadButton.titleLabel?.font = .preferredFont(forTextStyle: .extraLargeTitle2)
        downloadButton.layer.cornerRadius = 8
        downloadButton.backgroundColor = .darkGray
        downloadButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            playButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -80),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            playButton.widthAnchor.constraint(equalTo: downloadButton.widthAnchor),
            
            downloadButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 80),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
        ])
    }
}
