import UIKit
import Contacts

class FriendCell: UITableViewCell {
    static let identifier = "FriendCell"
    private let contactNameLabel = UILabel()
    private let contactEmailLabel = UILabel()
    private let contactImageView = UIImageView()
    
    var friend : Friend? {
        didSet {
            configureCell()
        }
    }
    
    private func configureCell() {
        let formatter = CNContactFormatter()
        formatter.style = .fullName
        guard let friend = friend,
              let name = formatter.string(from: friend.contactValue) else { return }
        contactNameLabel.text = name
        contactEmailLabel.text = friend.workEmail
        contactImageView.image = friend.profilePicture ?? UIImage(named: "PlaceholderProfilePic")
        contactImageView.layer.masksToBounds = true
        contactImageView.layer.cornerRadius = 22.0
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupContactNameLabel()
        setupContactEmailLabel()
        setupContactImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension FriendCell {
    func setupContactNameLabel() {
        
    }
    
    func setupContactEmailLabel() {
        
    }
    
    func setupContactImageView() {
        
    }
}
