import UIKit
import PlaygroundSupport

class CustomSegmentedControl: UIView {
  
  private var buttonTitles: [String]!
  private var buttons: [UIButton]!
  private var selectorView: UIView!
  
  var textColor: UIColor = .black
  var selectorViewColor: UIColor = .red
  var selectorTextColor: UIColor = .red
  
  private func configStackView() {
    let stack = UIStackView(arrangedSubviews: buttons)
    stack.axis = .horizontal
    stack.alignment = .fill
    stack.distribution = .fillEqually
    addSubiew(stack)
    stack.translatesAutoresizingMaskIntoConstraints = false
    stack.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    stack.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    stack.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    stack.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
  }
  
}

