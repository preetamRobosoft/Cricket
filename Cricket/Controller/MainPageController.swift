//
//  MainPageController.swift
//  Cricket
//
//  Created by Prajwal Rao Kadam on 06/12/22.
//


import UIKit

class MainPageController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    var pageHeadings = ["Welcome to Cric Champs!", "Create & Manage Tournaments", "View Tournaments"]
    var pageImages = ["Welcome Infog-1", "Group 3", "Group 3 (1)"]
    var pageContent = ["Your one stop app for Creating and managing your own cricket tournaments and share it with your viewers.",
                       "Create Fixtures by inputting teams, grounds, umpires, overs etc. and manage them thereafter.",
                       "Use Tournament code to get access for viewing live scores and updates of a tournament."]
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the data source to itself
        self.dataSource = self

        // Create the first walkthrough screen
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        }
    }

    // MARK: - UIPageViewControllerDataSource Methods
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        var index = (viewController as! OnboardingViewController).index
        index -= 1
//        if index > 1{
//            contentViewController(at: index)?.skip.isHidden = true
//        }
        return contentViewController(at: index)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

        var index = (viewController as! OnboardingViewController).index
        index += 1
//        if index == 1{
//            contentViewController(at: index)?.skip.isHidden = true
//        }
        return contentViewController(at: index)
    }

    // MARK: - Helper Methods
    func contentViewController(at index: Int) -> OnboardingViewController? {
        if index < 0 || index >= pageHeadings.count {
            return nil
        }

        // Create a new view controller and pass suitable data.
        if let pageContentViewController = storyboard?.instantiateViewController(withIdentifier: "OnboardingViewController") as? OnboardingViewController {
            pageContentViewController.index = index
            pageContentViewController.imageFile = pageImages[index]
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.content = pageContent[index]
           
            //pageContentViewController.viewDidLoad()
            return pageContentViewController
        }

        return nil
    }

    func forward(index: Int) {
        if let nextViewController = contentViewController(at: index + 1 ) {
            setViewControllers([nextViewController], direction: .forward, animated: true, completion: nil)
            print("Hi")
            if index == 1{
            nextViewController.skip.isHidden = true
            }
        }
    }
}

