import UIKit

final class ProfileViewController: UIViewController {
    
    let imageView = UIImageView()
    let logoutButton = UIButton(type: .system)
    let nameLabel = UILabel()
    let loginNameLabel = UILabel()
    let descriptionLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        
    }
    
    func setupViews() {
        setupImageView()
        setupLogoutButton()
        setupLabel()
        addSubview()
    }
    
    func setupImageView() {
        imageView.image = UIImage(resource: .avatar)
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupLogoutButton () {
        logoutButton.setImage(UIImage(resource: .logoutButton), for: .normal)
        logoutButton.tintColor = UIColor(resource: .ypRed)
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    func setupLabel() {
        nameLabel.text = "Екатерина Новикова"
        nameLabel.textColor = .white
        nameLabel.font = .systemFont(ofSize: 23, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        loginNameLabel.text = "@ekaterina_nov"
        loginNameLabel.textColor = .gray
        loginNameLabel.font = .systemFont(ofSize: 13, weight: .regular)
        loginNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.text = "Hello, world!"
        descriptionLabel.textColor = .white
        descriptionLabel.font = .systemFont(ofSize: 13, weight: .regular)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addSubview() {
        view.addSubview(imageView)
        view.addSubview(logoutButton)
        view.addSubview(nameLabel)
        view.addSubview(loginNameLabel)
        view.addSubview(descriptionLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 70),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            logoutButton.heightAnchor.constraint(equalToConstant: 44),
            logoutButton.widthAnchor.constraint(equalToConstant: 44),
            
            nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            logoutButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            
            nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            
            loginNameLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            loginNameLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            loginNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            
            descriptionLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: loginNameLabel.bottomAnchor, constant: 8),
            
            logoutButton.centerYAnchor.constraint(equalTo: imageView.centerYAnchor)
        ])
    }
    
    @objc
    private func didTapButton() {
        
    }
}
