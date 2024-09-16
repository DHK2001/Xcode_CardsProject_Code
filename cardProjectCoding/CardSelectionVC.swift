//
//  CardSelectionVC.swift
//  cardProjectCoding
//
//  Created by Derek H. Galeas on 20/5/24.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    var stop = false
    var timer: Timer!
    var cards: [UIImage] = Deck.allValues

    let cardImageView    = UIImageView()
    let stop_resetButton = CWButton(color: .systemRed,   title: "Stop!", systemImageName: "stop.circle")
    let rulesButton      = CWButton(color: .systemBlue,  title: "Rules", systemImageName: "list.bullet")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
    }
    
    func startTimer() {
        stop = false;
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    func stopTimer() {
        stop = true;
        timer.invalidate()
    }
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if(!stop){
            stopTimer()
        }
    }
    
    func configureUI(){
        configureCardImageView()
        configureStopResetButton()
        configureRulesButton()
    }
    
    func configureCardImageView(){
        view.addSubview(cardImageView)// adding the subview to the view.
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureStopResetButton() {
        view.addSubview(stop_resetButton)
        
        stop_resetButton.addTarget(self, action: #selector(actionStopResetButton), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stop_resetButton.widthAnchor.constraint(equalToConstant: 260),
            stop_resetButton.heightAnchor.constraint(equalToConstant: 50),
            stop_resetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stop_resetButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    
    @objc func actionStopResetButton(){
        if stop {
            stop_resetButton.configuration?.title = "Stop!"
            stop_resetButton.configuration?.baseForegroundColor = UIColor.systemRed
            stop_resetButton.configuration?.baseBackgroundColor = UIColor.systemRed
            stop_resetButton.configuration?.image = UIImage(systemName: "stop.circle")
            startTimer()
        }else{
            stop_resetButton.configuration?.title = "Reset"
            stop_resetButton.configuration?.baseForegroundColor = UIColor.systemGreen
            stop_resetButton.configuration?.baseBackgroundColor = UIColor.systemGreen
            stop_resetButton.configuration?.image = UIImage(systemName: "arrow.clockwise.circle")
            stopTimer()
        }
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 260),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stop_resetButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stop_resetButton.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func presentRulesVC(){
        present(RulesVC(), animated: true)
    }
}
