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
    private var font = UIFont()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getFamilyNames()

        font = setupItalic()
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

    /// System Font Informationをprintする
    @IBAction private func printSystemFontInformation(_ sender: UIButton) {
        print("labelFontSize: \(UIFont.labelFontSize)")
        print("buttonFontSize: \(UIFont.buttonFontSize)")
        print("smallSystemFontSize \(UIFont.smallSystemFontSize)")
        print("systemFontSize: \(UIFont.systemFontSize)")
    }

    /// Font Metrics & Font Descriptorをprintする
    @IBAction func printFontMetricsAndFontDescriptor(_ sender: UIButton) {

        // Font Metrics
        print("pointSize: \(font.pointSize)")
        print("ascender: \(font.ascender)")
        print("descender: \(font.descender)")
        print("leading: \(font.leading)")
        print("capHeight: \(font.capHeight)")
        print("xHeight: \(font.xHeight)")
        print("lineHeight: \(font.lineHeight)")

        // Font Descriptor
        print("fontDescriptor: \(font.fontDescriptor)")
    }
}
