//
//  ViewController.swift
//  LDDemo
//
//  Created by Khushali Nimje on 18/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var employeeTableView: UITableView!
    
    private var employeeViewModel : EmployeesViewModel?
    
    private var dataSource : EmployeeTableViewDataSource<EmployeeTableViewCell,EmployeeData>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.callToViewModelForUIUpdate()
    }
    
    private func callToViewModelForUIUpdate(){
        
        self.employeeViewModel =  EmployeesViewModel()
        self.employeeViewModel?.bindEmployeeViewModelToController = {
            self.updateDataSource()
        }
    }
    
    private func updateDataSource(){
        
        guard let data = self.employeeViewModel?.empData?.data else {return}
        self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell", items: data, configureCell: { (cell, evm) in
            cell.employeeIdLabel.text = "ID: " + evm.id.description
            cell.employeeNameLabel.text = "Name: " + evm.employeeName
        })
        
        DispatchQueue.main.async {
            self.employeeTableView.dataSource = self.dataSource
            self.employeeTableView.reloadData()
        }
    }
    
}

