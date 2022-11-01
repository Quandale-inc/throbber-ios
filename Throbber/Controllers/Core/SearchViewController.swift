//
//  SearchViewController.swift
//  Throbber
//
//  Created by Adnan Joraid on 2022-10-31.
//

import UIKit

class SearchViewController: UIViewController {
    let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNavBar()
        configureSearchController()
    }
    
    private func setupNavBar() {
        
        let profileButton = UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .plain, target: self, action: #selector(profileButtonAction))
        let settingsButton = UIBarButtonItem(image: UIImage(systemName: "gearshape"), style: .plain, target: self, action: #selector(sparklesButtonAction))
        
        navigationItem.leftBarButtonItem = profileButton
        navigationItem.rightBarButtonItem = settingsButton
        
    }
    
    @objc private func profileButtonAction() {
        print("Profile Button Is Clicked")
    }
    
    @objc private func sparklesButtonAction() {
        print("Settings Button Is Clicked")
    }
    
    private func configureSearchController() {
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "Search Throbber"
        definesPresentationContext = true
        navigationItem.titleView = searchController.searchBar

    }
}

// MARK: - Extensions

extension SearchViewController: UISearchResultsUpdating, UISearchBarDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        print(text)
    }
    
    func didPresentSearchController(searchController: UISearchController) {
       searchController.searchBar.becomeFirstResponder()
    }
    
    func didPresentSearchController(_ searchController: UISearchController) {
        searchController.searchBar.becomeFirstResponder()
        searchController.searchBar.showsCancelButton = true
    }


    func didDismissSearchController(_ searchController: UISearchController) {
        searchController.searchBar.showsCancelButton = false
    }

    
}
