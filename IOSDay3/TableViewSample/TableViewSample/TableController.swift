//
//  TableController.swift
//  TableViewSample
//
//  Created by chmac on 2018. 7. 21..
//  Copyright © 2018년 chmac. All rights reserved.
//

import UIKit

class TableController: UITableViewController {

    
    var arr = [("신범철","독산"),("헛개수","씨제이"),("사이다","칠성")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    // 하나의 데이터를 그룹으로 표현함
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    // 섹션당 row 의 개수는 몇개냐
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }

    //반복 호출됨.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCellID", for: indexPath)// 스토리보드의
        cell.textLabel?.text = arr[indexPath.row].0 //
        print(arr[indexPath.row].1)
        cell.detailTextLabel?.text = arr[indexPath.row].1 // 튜플의 개별 항목 접근은 배열처럼 가져올순 없는가??
        cell.imageView?.image = #imageLiteral(resourceName: "con2")
        // Configure the cell...

        return cell
    }
    
    
    // 아이템에서 상세화면 이동
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var nSel = self.tableView.indexPathForSelectedRow?.row // 현재 선택된 로그 객체를 얻어 올 수 있음
        
        g.strData = arr[nSel!].0
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
