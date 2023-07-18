//
//  EmployeesViewModel.swift
//  LDDemo
//
//  Created by Khushali Nimje on 18/07/23.
//

import Foundation

final class EmployeesViewModel: NSObject {
    
    private(set) var empData: Employees? {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.callFuncToGetEmpData()
    }
    
    private func callFuncToGetEmpData() {
        APIService.shared.apiToGetEmployeeData { (empData) in
            self.empData = empData
        }
    }
}
