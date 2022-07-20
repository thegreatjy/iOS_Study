//
//  ViewController.swift
//  TodoList
//
//  Created by THEGREATJY on 2022/05/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var tasks = [Task]()    //Task 배열
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }

    @IBAction func tapEditButton(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func tapAddButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "할 일 등록", message: "할 일을 등록해주세요.", preferredStyle: .alert)
        //"등록" 버튼을 누를 때마다 tasks 배열에 추가 됨.
        let registerButton = UIAlertAction(title: "등록", style: .default, handler: { [weak self] _ in
            guard let title = alert.textFields?[0].text else { return } //텍스트 필드에 입력한 내용 가지고 오기, optional 반환
            let task = Task(title : title, done: false)
            self?.tasks.append(task)
            self?.tableView.reloadData()
        })
        let cancelButton = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(cancelButton)
        alert.addAction(registerButton)
        alert.addTextField(configurationHandler: { textField in textField.placeholder = "할 일을 입력해주세요."
        })
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource{
    //행의개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tasks.count //tasks 배열의 개수 리턴
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell 재활용>메모리 아낌
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let task = self.tasks[indexPath.row]
        cell.textLabel?.text = task.title
        return cell
    }
}
