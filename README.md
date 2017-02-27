# UIFont

## 概要
UIFontは、文字のフォントを変更するために利用します。


## 関連クラス
NSObject, NSCopying

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|familyNames | 使用できるフォントの一覧を取得する | UIFont.familyNames |
|pointSize | 現在のフォントサイズを取得する | font.pointSize |


## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|init | フォントを指定する | UIFont(name: "HiraMinProN-W3", size: 20)|
|boldSystemFont | フォントをボールドに変更する | UIFont.boldSystemFont(ofSize: 20) |
|italicSystemFont | フォントをイタリックに変更する | UIFont.italicSystemFont(ofSize: 20)|
|withSize | フォントサイズを変更する | font.withSize(CGFloat( 30 )) |

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uifont
