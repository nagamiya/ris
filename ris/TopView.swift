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
        // type未指定だとcustom扱いされる、押した時のエフェクトみたいなのが出ない。
        self.searchButton = UIButton(type: UIButton.ButtonType.system)
        self.searchButton.setTitle("SEARCH", for: .normal)
        self.searchButton.setTitleColor(.blue, for: .normal)
        
        print(searchButton.buttonType)
    
        /* コピペここから */
        super.init(frame: frame)
        self.backgroundColor = .white
        /* コピペここまで */
        
        self.addSubview(testLabel)
        self.addSubview(searchButton)
        print(searchButton.center)
        searchButton.addTarget(self, action: #selector(moveSearchView), for: .touchUpInside)
        
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
        // `mainLabel` を真ん中に置くように、原点座標を先ほど取得したサイズと自分のサイズから割り出します
        let x = (self.bounds.width - labelSize.width) / 2
        let y = (self.bounds.height - labelSize.height) / 2
        let labelOrigin = CGPoint(x: x, y: y)
        // `mainLabel` のレイアウトは、`frame` に原点座標とサイズで代入して決めます
        self.testLabel.frame = CGRect(origin: labelOrigin, size: labelSize)
        /* コピペここまで */
        
        let buttonSize = self.searchButton.sizeThatFits(self.bounds.size)
        let xx = (self.bounds.width - buttonSize.width) / 2 + 50
        let yy = (self.bounds.height - buttonSize.height) / 2 + 50
        let ButtonOrigin = CGPoint(x: xx, y: yy)
        self.searchButton.frame = CGRect(origin: ButtonOrigin, size: buttonSize)
        
    }
    
    @objc func moveSearchView(){
        
        
        
    }
    
}


