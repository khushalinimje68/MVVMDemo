//
//  Employee.swift
//  LDDemo
//
//  Created by Khushali Nimje on 18/07/23.
//

import Foundation

struct Employees: Decodable {
    let status: String
    let data: [EmployeeData]
}

struct EmployeeData: Decodable {
    let id, employeeSalary, employeeAge: Int
    let employeeName: String
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
