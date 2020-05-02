//
//  TopView.swift
//  ris
//
//  Created by nagamiya on 2020/04/30.
//  Copyright © 2020 nagamiya. All rights reserved.
//

import UIKit

class TopView: UIView {

    var testLabel: UILabel
    var searchButton: UIButton
    
    override init(frame: CGRect){
        
        self.testLabel = UILabel()
        self.testLabel.text = "HelloWorld"
        
        self.searchButton = UIButton()
        self.searchButton.setTitle("SEARCH", for: .normal)
        self.searchButton.setTitleColor(.blue, for: .normal)
        /* コピペここから */
        super.init(frame: frame)
        self.backgroundColor = .white
        /* コピペここまで */
        
        self.addSubview(testLabel)
        self.addSubview(searchButton)
        print(searchButton.center)
        
    }
    
    // こいつはinitかくと必ず出てくるらしいがfix押しとけしか書いてなかった、調べる
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        /* コピペここから */
        // 必ず `super` の `layoutSubviews()` を呼び出します
        super.layoutSubviews()
        
        // `mainLabel` がほしいサイズを自分のサイズから `sizeThatFits(_:)` を通して取り出します
        let labelSize = self.testLabel.sizeThatFits(self.bounds.size)
        
        let buttonSize = self.searchButton.sizeThatFits(self.bounds.size)
        
        // `mainLabel` を真ん中に置くように、原点座標を先ほど取得したサイズと自分のサイズから割り出します
        let x = (self.bounds.width - labelSize.width) / 2
        let y = (self.bounds.height - labelSize.height) / 2
        let labelOrigin = CGPoint(x: x, y: y)
        
        let xx = (self.bounds.width - buttonSize.width) / 2
        let yy = (self.bounds.height - buttonSize.height) / 2
        let ButtonOrigin = CGPoint(x: xx + 50, y: yy + 50)
        
        // `mainLabel` のレイアウトは、`frame` に原点座標とサイズで代入して決めます
        self.testLabel.frame = CGRect(origin: labelOrigin, size: labelSize)
        self.searchButton.frame = CGRect(origin: ButtonOrigin, size: buttonSize)

        /* コピペここまで */
        
    }
}
