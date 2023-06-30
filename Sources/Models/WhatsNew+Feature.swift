import SwiftUI

// MARK: - WhatsNew+Feature

public extension WhatsNew {
    
    /// A WhatsNew Feature
    struct Feature {
        
        // MARK: Properties

        private let id: UUID = UUID()
        
        /// The image
        public var image: Image
        
        /// The title Text
        public var title: SwiftUI.Text
        
        /// The subtitle Text
        public var subtitle: SwiftUI.Text
        
        // MARK: Initializer
        
        /// Creates a new instance of `WhatsNew.Feature`
        /// - Parameters:
        ///   - image: The image
        ///   - title: The title Text
        ///   - subtitle: The subtitle Text
        public init(
            image: Image,
            title: SwiftUI.Text,
            subtitle: SwiftUI.Text
        ) {
            self.image = image
            self.title = title
            self.subtitle = subtitle
        }

        public init(
            image: Image,
            title: Text,
            subtitle: Text
        ) {
            self.init(image: image,
                      title: SwiftUI.Text(whatsNewText: title),
                      subtitle: SwiftUI.Text(whatsNewText: subtitle))
        }
        
    }
    
}

// MARK: - Feature+Equatable

extension WhatsNew.Feature: Equatable {
    
    /// Returns a Boolean value indicating whether two values are equal.
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.title == rhs.title
            && lhs.subtitle == rhs.subtitle
    }
    
}

// MARK: - Feature+Hashable

extension WhatsNew.Feature: Hashable {
    
    /// Hashes the essential components of this value by feeding them into the given hasher.
    /// - Parameter hasher: The hasher to use when combining the components of this instance.
    public func hash(
        into hasher: inout Hasher
    ) {
        hasher.combine(self.id)
    }
    
}
