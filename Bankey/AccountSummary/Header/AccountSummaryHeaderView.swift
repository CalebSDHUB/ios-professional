//
//  AccountSummaryHeaderView.swift
//  Bankey
//
//  Created by Caleb Danielsen on 12.05.2023.
//

import UIKit

final class AccountSummaryHeaderView: UIView {
    @IBOutlet var contentView: UIView!
    
    let shakeyBellView = ShakeyBellView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 144)
    }
    
    private func commonInit() {
        let bundle = Bundle(for: AccountSummaryHeaderView.self)
        bundle.loadNibNamed("AccountSummaryHeaderView", owner: self, options: nil)
        addSubview(contentView)
        contentView.backgroundColor = appColor
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        setupShakeyBell()
    }
    
    private func setupShakeyBell() {
            shakeyBellView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(shakeyBellView)
            
            NSLayoutConstraint.activate([
                shakeyBellView.trailingAnchor.constraint(equalTo: trailingAnchor),
                shakeyBellView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        }
    
}
