//
//  ViewController.swift
//  WeatherApp
//
//  Created by Valiok Khutornenko on 03.11.2019.
//  Copyright © 2019 Valentine Khutornenko. All rights reserved.
//

import UIKit


class WeekForecastPresenter: BasePresenter {
    
    let tableView : UITableView
    
    init(tableView: UITableView) {
        self.tableView = tableView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(WeekForecastTVCell.self, forCellReuseIdentifier: WeekForecastTVCell.description())
        view = tableView
        // Do any additional setup after loading the view.
    }
}

extension WeekForecastPresenter : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension WeekForecastPresenter : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WeekForecastTVCell.description(), for: indexPath) as! WeekForecastTVCell
        cell.textLabel?.text = "Underscore"
        
        return cell
    }
        
}



