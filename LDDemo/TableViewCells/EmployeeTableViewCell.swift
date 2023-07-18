//
//  EmployeeTableViewCell.swift
//  LDDemo
//
//  Created by Khushali Nimje on 18/07/23.
//

import UIKit

final class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
