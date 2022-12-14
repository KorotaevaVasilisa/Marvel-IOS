//
//  SnnapedView.swift
//  marvel-vk
//
//  Created by user225687 on 12/14/22.
//

import UIKit

class SnappedView: UICollectionViewCell{
    lazy var superImageV: UIImageView = {
        let v = UIImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.contentMode = .scaleAspectFill
        return v
    }()
    
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 100, height: 20))

    
    
    func setupView(){
        contentView.addSubview(superImageV)
        contentView.addSubview(label)
        contentView.clipsToBounds = true
        label.textColor = UIColor.white
        superImageV.layer.cornerRadius = 40
        superImageV.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            superImageV.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            superImageV.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            superImageV.topAnchor.constraint(equalTo: contentView.topAnchor),
            superImageV.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
//        NSLayoutConstraint.activate([
//            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
//        ])
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),

            superImageV.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            superImageV.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        setupView()
    }
    
}
