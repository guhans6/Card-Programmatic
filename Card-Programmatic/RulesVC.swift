//
//  RulesVC.swift
//  Card-Programmatic
//
//  Created by guhan-pt6208 on 01/12/22.
//

import UIKit

class RulesVC: UIViewController {

    var titleLabel = UILabel()
    var rulesLabel = UILabel()
    var rulesDescriptionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureRulesDescriptionLabel()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 30, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
             
        ])
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false        //enabling autolayout
        rulesLabel.text = "The value of each card represents number of exersice you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.textAlignment = .center
        rulesLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
        
    }
    
    func configureRulesDescriptionLabel() {
        view.addSubview(rulesDescriptionLabel)
        rulesDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false        //enabling autolayout
        rulesDescriptionLabel.text = "♠️ = Do This\n\n❤️ = Do That\n\n♣️ = Do Something\n\n♦️ = Do Nothing"
//        rulesDescriptionLabel.textAlignment = .center   // Left alignment is default
        rulesDescriptionLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesDescriptionLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesDescriptionLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 50),
            rulesDescriptionLabel.widthAnchor.constraint(equalToConstant: 200),
            rulesDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
}
