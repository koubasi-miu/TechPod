//
//  ViewController.swift
//  TechPod
//
//  Created by 藤井美羽 on 2021/02/12.
//

import UIKit
import SafariServices

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    var nameArray = [String]()
    
    var fileNameArray = [String]()
    
    var imageNameArray = [String]()
    
    var urlArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   //テーブルビューのデータソースメゾットはviewcontrollerクラスに書くよ、という設定
        table.dataSource = self
        table.delegate = self
    
    nameArray = ["赤倉", "Hiten", "望月けい", "青紅", "ダイスケリチャード"]
    
    imageNameArray = ["akakura.jpg", "hiten.jpg", "motizuki.jpg", "aobeni.jpg", "daisukeritya-do.jpg"]
        
    //fileNameArray = ["akakura.webloc", "hiten.weblocA", "motizuki.webloc", "aobeni.webloc", "daisuke.webloc"]
        
    urlArray = ["https://twitter.com/akakura1341?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
    , "https://twitter.com/hitenkei", "https://twitter.com/key_999?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor", "https://twitter.com/ao_beni?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor", "https://twitter.com/daisukerichard?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"]
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    //ID付きのセルを取得して、セルフ属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = nameArray[indexPath.row]
        
        cell?.imageView?.image = UIImage(named: imageNameArray[indexPath.row])
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(nameArray[indexPath.row])が選ばれました")
        
        let twitterUrl = NSURL(string: urlArray[indexPath.row])
        
        if let twitterUrl = twitterUrl {
            let safariViewController = SFSafariViewController(url: twitterUrl as URL)
            present(safariViewController, animated: false, completion: nil)
        }
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
    }





