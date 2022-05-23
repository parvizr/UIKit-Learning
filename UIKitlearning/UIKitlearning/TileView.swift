//
//  TileView.swift
//  UIKitlearning
//
//  Created by javad on 31.03.22.
//

import UIKit

class TileView: UIView {
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var padding: CGFloat = 25 {
        didSet {
            setNeedsLayout()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
       

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupViews()
        
        let containerWidth = bounds.width
        let containerHeight = bounds.height
        
        let numberOfItems: CGFloat = 2
        
        let itemWidth = (containerWidth - (numberOfItems + 1) * padding) / numberOfItems
        let itemHeight = containerHeight - 2 * padding
        
        blueView.frame = CGRect(x: padding, y: padding, width: itemWidth, height: itemHeight)
        redView.frame = CGRect(x: 2 * padding + itemWidth, y: padding, width: itemWidth, height: itemHeight)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(blueView)
        addSubview(redView)
        
            }
}
