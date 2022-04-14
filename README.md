# アプリケーション名:team-profile
## アプリケーション概要
[１]プロフィール登録機能  
・顔写真つきのプロフィールが登録でき、ユーザ名や所属で検索・参照ができます。  

[２]定例業務の自己評価登録機能  
・業務で行う作業が一覧化されており（A、B、C認定で項目を設定済）、各項目ごとに自己評価を登録できます。  
・他のユーザの登録情報を参照することができ、実施可能な業務、できない業務を共有することができます。  
・A、B、C項目ごとの評価を埋めることでスキル認定（A認定、B認定、C認定）を取得することができます。項目毎に認定を設定することで、目標や実施可能な業務がわかりやすくなリます。


## URL
https://team-profile-37467.herokuapp.com/
http://18.180.231.138/


## テスト用アカウント
・Basic認証ID: admin1  
・Basic認証PASS: 1111  
・メールアドレス: test@test.com  
・パスワード: testtest1  

## 利用方法
[プロフィール登録、参照、検索機能]  
1.プロフィール参照  
・トップページに登録ユーザが一覧表示されています、詳細ボタンをクリックしプロフィールを確認することができます。  
・サイドバーの「メンバ情報一覧表」クリック、登録メンバの情報一覧表を閲覧できます。  
2.ユーザ検索  
・トップページ上部の、検索ボックスでユーザー名・所属グループでメンバーを検索することができます。  
3.ユーザプロフィール登録・編集、ログイン機能  
・サイドバーの「アカウントメニュー」クリックし、ユーザ新規登録、ログイン、プロフィールの変更ができます。  

[認定制度]  
・ログイン後、サイドバーの認定制度を選択し認定一覧をクリック、新規登録または編集をボタンをクリックし認定状況の登録、編集ができます。  
・認定状況の登録、編集画面で自己評価を入力後、認定取得基準(全項目自己評価70以上)を達成するとページ下部に、認定達成のメッセージが表示されます。    
メッセージに従い、認定ステータスを変更することで認定を取得することができます。  


## アプリケーションを作成した背景
[１]プロフィール登録機能  
⇨私の前職の職場はデータセンタで、24時間システムの運用監視を行う業務でした。その現場はシフト制で人員の入れ替わりも多く、一緒に働いているメンバーの顔や名前が覚えにくい環境でした。  
その為顔写真付きのプロフィールのデータベースがあれば、新規着任者の方なども同僚メンバを覚えやすくなるのではないかと思い作成しました。

[２]定例業務の自己評価登録機能  
⇨運用監視の業務では、定例で実施する作業や手順書で作業手順が明確になっているものが多くあります。  
そういった作業で、作業頻度多いものや重要性が高く覚えるべきことを一覧化し記録することで効率よくスキルアップを目指すことができると思いました。  
また自己評価・認定状況を一覧化し参照しやすくすることで、業務の割り振りや今後の目標を立てることに活かせれば良いと思い作成しました。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1nTE_Q00RevLgAn0hWdvWflfHLKGgShLRKQEyM-1J5J0/edit?usp=sharing

## 実装した機能についての画像やGIFおよびその説明※
ユーザ情報一覧表示画面
[![Image from Gyazo](https://i.gyazo.com/977b5bc5651eb2c133557051c563d1d4.png)](https://gyazo.com/977b5bc5651eb2c133557051c563d1d4)

ユーザ情報一覧表
[![Image from Gyazo](https://i.gyazo.com/d70630032d512e769d700f15ed12bbf9.png)](https://gyazo.com/d70630032d512e769d700f15ed12bbf9)

認定登録機能
[![Image from Gyazo](https://i.gyazo.com/11dcb1822d51714b55da3f22236a055c.gif)](https://gyazo.com/11dcb1822d51714b55da3f22236a055c)　　


スマホ画面 
[![Image from Gyazo](https://i.gyazo.com/0fa13a7b1854c057b97aa465b4abe1c5.gif)](https://gyazo.com/0fa13a7b1854c057b97aa465b4abe1c5)　　

ユーザ検索機能  
[![Image from Gyazo](https://i.gyazo.com/89128e1cd885e1fc254aebf5ae6d1967.gif)](https://gyazo.com/89128e1cd885e1fc254aebf5ae6d1967)



## 実装予定の機能
- 採点機能つきのテスト問題作成(現状自己評価のみの評価基準のため、テストに合格したら認定が取得できるという仕組みを考えています。)

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/11c1ccd2dc36cd3982a55c69d947ea1c.png)](https://gyazo.com/11c1ccd2dc36cd3982a55c69d947ea1c)

## 開発環境
・フロントエンド：HTML・CSS・Bootstrap・JavaScript  
・バックエンド：Ruby・Ruby on Rails  
・テキストエディタ：Visual Studio Code  



## 工夫したポイント
Bootstrapを使用してるため、スマホ画面でも見やすいようになっています。
画面の大きさで文字や画像のサイズを可変し、ユーザ一覧画面、詳細画面などが見やすいように工夫しています。

