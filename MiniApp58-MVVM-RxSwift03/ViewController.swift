//
//  ViewController.swift
//  MiniApp58-MVVM-RxSwift03
//
//  Created by 前田航汰 on 2022/07/21.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet private weak var button1: UIButton!
    @IBOutlet private weak var button2: UIButton!
    @IBOutlet private weak var button3: UIButton!
    @IBOutlet private weak var textLabel1: UILabel!
    @IBOutlet private weak var textLabel2: UILabel!
    @IBOutlet private weak var textLabel3: UILabel!

    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        button1.rx.tap
            .subscribe(onNext: { [weak self] in
                self?.textLabel1.text = "押してくれてありがとう！"
            })
            .disposed(by: disposeBag)

        button2.rx.tap
            .subscribe(onNext: { [weak self] in
                self?.textLabel2.text = "押してくれてありがとう！"
            })
            .disposed(by: disposeBag)

        button3.rx.tap
            .subscribe(onNext: { [weak self] in
                self?.textLabel3.text = "押してくれてありがとう！"
            })
            .disposed(by: disposeBag)
    }

}

