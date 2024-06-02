import Foundation
import UIKit

final class ProfileViewController: UIViewController {
    private var labelName: UILabel?
    private var labelLoginName: UILabel?
    private var labelDescription: UILabel?
    
    
    override func viewDidLoad() {
        profileImageFunc()
    }
    
    private func profileImageFunc() {
        let profileImage = UIImage(named: "avatar")
        let imageView = UIImageView(image: profileImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        
        
        let labelName = UILabel()
        labelName.text = "Елена Новикова"
        labelName.textColor = .white
        labelName.font = UIFont.systemFont(ofSize: 23, weight: .semibold)
        labelName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelName)
        
        self.labelName = labelName
        
        
        let labelLoginName = UILabel()
        labelLoginName.text = "@ekaterina_nov"
        labelLoginName.font = UIFont.systemFont(ofSize: 13)
        labelLoginName.textColor = UIColor(red: 174.0/255.0, green: 175.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        labelLoginName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelLoginName)
        
        self.labelLoginName = labelLoginName
        
        
        let labelDescription = UILabel()
        labelDescription.text = "Hello, World!"
        labelDescription.font = UIFont.systemFont(ofSize: 13)
        labelDescription.textColor = .white
        labelDescription.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelDescription)
        
        self.labelDescription = labelDescription
        
        
        let exitButton = UIButton.systemButton(
            with: UIImage(systemName: "ipad.and.arrow.forward")!,
            target: self,
            action: nil
        )
        exitButton.tintColor = .red
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(exitButton)
        
        
        
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 70),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            
            labelName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            labelName.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            
            
            labelLoginName.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 8),
            labelLoginName.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            
            
            labelDescription.topAnchor.constraint(equalTo: labelLoginName.bottomAnchor, constant: 8),
            labelDescription.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            
            
            exitButton.heightAnchor.constraint(equalToConstant: 44),
            exitButton.widthAnchor.constraint(equalToConstant: 44),
            exitButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            exitButton.centerYAnchor.constraint(equalTo: imageView.centerYAnchor)
        ])
    }
}
