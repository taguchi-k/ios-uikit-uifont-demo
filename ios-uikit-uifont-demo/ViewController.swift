//
//  ViewController.swift
//  ios-uikit-uifont-demo
//
//  Created by k_motoyama on 2017/02/27.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getFamilyNames()
        
        var font = setupItalic()
        font = setupWithSize(font: font)
        getPointSize(font: font)
        
        label.font = font
        label.sizeToFit()

    }

    // 使用できるフォントの一覧を取得する
    private func getFamilyNames(){
        print(UIFont.familyNames)
    }
    
    // 現在のフォントサイズを取得する
    private func getPointSize(font: UIFont){
        print(font.pointSize)
    }
    
    // フォントを指定する
    private func setupFont() -> UIFont{
        return UIFont(name: "HiraMinProN-W3", size: 20)!
    }
    
    // フォントをボールドに変更する
    private func setupBold() -> UIFont{
        return UIFont.boldSystemFont(ofSize: 20)
    }

    // フォントをイタリックに変更する
    private func setupItalic() -> UIFont{
        return UIFont.italicSystemFont(ofSize: 20)
    }
    
    // フォントサイズを変更する
    private func setupWithSize(font: UIFont) -> UIFont{
        return font.withSize(CGFloat( 30 ))
    }
    


}

