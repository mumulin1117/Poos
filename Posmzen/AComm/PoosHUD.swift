//
//  PoosHUD.swift
//  Posmzen
//
//  Created by mumu on 2025/10/20.
//

import UIKit


final class PoosHUD: UIView {
    static let shared = PoosHUD()

    // MARK: - Config
    var backgroundAlpha: CGFloat = 0.35
    var cornerRadius: CGFloat = 14
    var containerSize = CGSize(width: 140, height: 140)
    var toastPadding: CGFloat = 16
    var animationDuration: TimeInterval = 0.22
    var toastDuration: TimeInterval = 1.6
    var successDuration: TimeInterval = 1.2

    // internal UI
    private var dimView: UIView = UIView()
    private var container: UIVisualEffectView!
    private var activity: UIActivityIndicatorView!
    private var imageView: UIImageView!
    private var label: UILabel!

    private var currentParent: UIView?

    private override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) { fatalError() }

    private func setupViews() {
        // dim view
        dimView.backgroundColor = UIColor.black.withAlphaComponent(backgroundAlpha)

        // container (blur)
        let blur = UIBlurEffect(style: .systemChromeMaterialDark)
        container = UIVisualEffectView(effect: blur)
        container.layer.cornerRadius = cornerRadius
        container.layer.masksToBounds = true
        container.translatesAutoresizingMaskIntoConstraints = false

        // activity
        activity = UIActivityIndicatorView(style: .large)
        activity.hidesWhenStopped = true
        activity.translatesAutoresizingMaskIntoConstraints = false
        activity.color = .white
        // imageView for success
        imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isHidden = true

        // label
        label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false

        // container content
        container.contentView.addSubview(activity)
        container.contentView.addSubview(imageView)
        container.contentView.addSubview(label)

        // Use self as a simple holder (not displayed directly)
        self.addSubview(dimView)
        self.addSubview(container)
    }

    private func layout(in parent: UIView) {
        // ensure frames & constraints setup
        self.frame = parent.bounds
        dimView.frame = bounds
        dimView.alpha = 0
        container.translatesAutoresizingMaskIntoConstraints = false
            activity.translatesAutoresizingMaskIntoConstraints = false
            imageView.translatesAutoresizingMaskIntoConstraints = false
            label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.deactivate(container.constraints)

        NSLayoutConstraint.activate([
            container.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            container.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            container.widthAnchor.constraint(equalToConstant: containerSize.width),
            container.heightAnchor.constraint(equalToConstant: containerSize.height),

            activity.centerXAnchor.constraint(equalTo: container.contentView.centerXAnchor),
            activity.topAnchor.constraint(equalTo: container.contentView.topAnchor, constant: 18),

            imageView.centerXAnchor.constraint(equalTo: container.contentView.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: container.contentView.topAnchor, constant: 16),
            imageView.widthAnchor.constraint(equalToConstant: 56),
            imageView.heightAnchor.constraint(equalToConstant: 56),

            label.leadingAnchor.constraint(equalTo: container.contentView.leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(equalTo: container.contentView.trailingAnchor, constant: -8),
            label.topAnchor.constraint(equalTo: activity.bottomAnchor, constant: 12),
            label.bottomAnchor.constraint(lessThanOrEqualTo: container.contentView.bottomAnchor, constant: -12)
        ])
    }

    // MARK: - Public API

    /// Show a centered loading HUD in `parent` (UIView or UIViewController.view)
    func showLoading(in parent: UIView, message: String? = nil, animated: Bool = true) {
        DispatchQueue.main.async {
            self.dismissIfDifferentParent(parent) // remove if shown elsewhere
            self.currentParent = parent

            if self.superview == nil {
                parent.addSubview(self)
//                self.translatesAutoresizingMaskIntoConstraints = false
            }
            self.layout(in: parent)

            // reset views
            self.imageView.isHidden = true
            self.activity.isHidden = false
            self.activity.startAnimating()
            self.label.text = message

            self.dimView.alpha = 0
            self.container.alpha = 0
            self.container.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)

            if animated {
                UIView.animate(withDuration: self.animationDuration) {
                    self.dimView.alpha = 1
                    self.container.alpha = 1
                    self.container.transform = .identity
                }
            } else {
                self.dimView.alpha = 1
                self.container.alpha = 1
                self.container.transform = .identity
            }
        }
    }

    /// Hide loading and optionally show success with text
    func hideLoading(in parent: UIView, showSuccessText: String? = nil) {
        DispatchQueue.main.async {
            guard self.currentParent == parent else { return }
            if let text = showSuccessText {
                self.showSuccess(in: parent, message: text)
            } else {
                self._hide(animated: true)
            }
        }
    }

    /// Show a success HUD (replaces spinner). Auto dismisses.
    func showSuccess(in parent: UIView, message: String? = nil) {
        DispatchQueue.main.async {
            self.dismissIfDifferentParent(parent)
            self.currentParent = parent

            if self.superview == nil {
                parent.addSubview(self)
//                self.translatesAutoresizingMaskIntoConstraints = false
            }
            self.layout(in: parent)

            self.activity.stopAnimating()
            self.activity.isHidden = true

            // setup success image (SF Symbol)
            if let check = UIImage(systemName: "checkmark.circle.fill") {
                self.imageView.image = check.withConfiguration(UIImage.SymbolConfiguration(pointSize: 56, weight: .regular))
                self.imageView.tintColor = UIColor.systemGreen
            }
            self.imageView.isHidden = false
            self.label.text = message

            self.dimView.alpha = 0
            self.container.alpha = 0
            self.container.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)

            UIView.animate(withDuration: self.animationDuration, animations: {
                self.dimView.alpha = 1
                self.container.alpha = 1
                self.container.transform = .identity
            }, completion: { _ in
                // tiny pop
                self.container.transform = CGAffineTransform(scaleX: 0.96, y: 0.96)
                UIView.animate(withDuration: 0.12, animations: {
                    self.container.transform = .identity
                })
                DispatchQueue.main.asyncAfter(deadline: .now() + self.successDuration) {
                    self._hide(animated: true)
                }
            })
        }
    }

    /// Show a short toast message at bottom of parent view (auto dismiss)
    func showToast(in parent: UIView, message: String, duration: TimeInterval? = nil) {
        DispatchQueue.main.async {
            let duration = duration ?? self.toastDuration
            let toast = PaddingLabel()
            toast.numberOfLines = 0
            toast.font = UIFont.systemFont(ofSize: 14, weight: .regular)
            toast.textColor = .white
            toast.backgroundColor = UIColor.black.withAlphaComponent(0.7)
            toast.layer.cornerRadius = 12
            toast.layer.masksToBounds = true
            toast.textAlignment = .center
            toast.padding = UIEdgeInsets(top: 8, left: 12, bottom: 8, right: 12)
            toast.text = message
            toast.alpha = 0

            toast.translatesAutoresizingMaskIntoConstraints = false
            parent.addSubview(toast)

            // constraints: centerX, bottom (safe area), width <= parent.width - 2*padding
            NSLayoutConstraint.activate([
                toast.centerXAnchor.constraint(equalTo: parent.centerXAnchor),
                toast.bottomAnchor.constraint(equalTo: parent.safeAreaLayoutGuide.bottomAnchor, constant: -36),
                toast.leadingAnchor.constraint(greaterThanOrEqualTo: parent.leadingAnchor, constant: 36),
                toast.trailingAnchor.constraint(lessThanOrEqualTo: parent.trailingAnchor, constant: -36)
            ])

            UIView.animate(withDuration: 0.18, animations: {
                toast.alpha = 1
            }, completion: { _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                    UIView.animate(withDuration: 0.16, animations: {
                        toast.alpha = 0
                    }, completion: { _ in
                        toast.removeFromSuperview()
                    })
                }
            })
        }
    }

    // MARK: - Helpers

    private func _hide(animated: Bool) {
        DispatchQueue.main.async {
            guard self.superview != nil else { return }
            let completion: (Bool) -> Void = { _ in
                self.activity.stopAnimating()
                self.removeFromSuperview()
                self.currentParent = nil
            }
            if animated {
                UIView.animate(withDuration: self.animationDuration, animations: {
                    self.dimView.alpha = 0
                    self.container.alpha = 0
                    self.container.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
                }, completion: completion)
            } else {
                completion(true)
            }
        }
    }

    private func dismissIfDifferentParent(_ parent: UIView) {
        if let cur = currentParent, cur !== parent {
            // remove from previous parent
            _hide(animated: false)
        }
    }
}

// MARK: - Convenience UIViewController extension

public extension UIViewController {
    func poos_showLoading(_ message: String? = nil) {
        PoosHUD.shared.showLoading(in: view, message: message)
    }

    func poos_showAutoLoading(_ message: String, duration: TimeInterval = 1.5) {
        poos_showLoading(message)
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            self.poos_hideLoading()
        }
    }

    func poos_hideLoading(showSuccess: String? = nil) {
        PoosHUD.shared.hideLoading(in: view, showSuccessText: showSuccess)
    }

    func poos_showSuccess(_ message: String? = nil) {
        PoosHUD.shared.showSuccess(in: view, message: message)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.poos_hideLoading()
        }
    }

    func poos_toast(_ message: String, duration: TimeInterval? = nil) {
        PoosHUD.shared.showToast(in: view, message: message, duration: duration)
    }
}

// MARK: - Small padding label helper for toast

private class PaddingLabel: UILabel {
    var padding = UIEdgeInsets.zero
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
    }
    override var intrinsicContentSize: CGSize {
        let s = super.intrinsicContentSize
        return CGSize(width: s.width + padding.left + padding.right,
                      height: s.height + padding.top + padding.bottom)
    }
}

