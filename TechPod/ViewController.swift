//
//  ViewController.swift
//  TechPod
//
//  Created by 藤井美羽 on 2021/02/12.
//

import UIKit

class ViewController: UIViewController, UITableViewDateSource {

    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var tabel: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dateSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return 10
    }
    
    func tableVieew(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Call")
        
        cell?.textLabel?.text = "テスト"
        
        return cell!
        
    }
    
    }




