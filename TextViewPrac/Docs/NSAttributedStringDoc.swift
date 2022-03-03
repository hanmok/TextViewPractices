
/*
 import CoreFoundation


@available(iOS 3.2, *)
open class NSAttributedString : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {

    
    open var string: String { get }

    open func attributes(at location: Int, effectiveRange range: NSRangePointer?) -> [NSAttributedString.Key : Any]
}

@available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
extension NSAttributedString {

    public convenience init(contentsOf url: URL, options: AttributedString.MarkdownParsingOptions = .init(), baseURL: URL? = nil) throws

    public convenience init(markdown: Data, options: AttributedString.MarkdownParsingOptions = .init(), baseURL: URL? = nil) throws

    public convenience init(markdown: String, options: AttributedString.MarkdownParsingOptions = .init(), baseURL: URL? = nil) throws
}

@available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
extension NSAttributedString {

    public convenience init(_ attrStr: AttributedString)

    public convenience init<S>(_ attrStr: AttributedString, including scope: KeyPath<AttributeScopes, S.Type>) throws where S : AttributeScope

    public convenience init<S>(_ attrStr: AttributedString, including scope: S.Type) throws where S : AttributeScope
}

extension NSAttributedString {

    
    open var length: Int { get }

    open func attribute(_ attrName: NSAttributedString.Key, at location: Int, effectiveRange range: NSRangePointer?) -> Any?

    open func attributedSubstring(from range: NSRange) -> NSAttributedString

    
    open func attributes(at location: Int, longestEffectiveRange range: NSRangePointer?, in rangeLimit: NSRange) -> [NSAttributedString.Key : Any]

    open func attribute(_ attrName: NSAttributedString.Key, at location: Int, longestEffectiveRange range: NSRangePointer?, in rangeLimit: NSRange) -> Any?

    
    open func isEqual(to other: NSAttributedString) -> Bool

    
    public init(string str: String)

    public init(string str: String, attributes attrs: [NSAttributedString.Key : Any]? = nil)

    public init(attributedString attrStr: NSAttributedString)

    
    @available(iOS 4.0, *)
    open func enumerateAttributes(in enumerationRange: NSRange, options opts: NSAttributedString.EnumerationOptions = [], using block: ([NSAttributedString.Key : Any], NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)

    @available(iOS 4.0, *)
    open func enumerateAttribute(_ attrName: NSAttributedString.Key, in enumerationRange: NSRange, options opts: NSAttributedString.EnumerationOptions = [], using block: (Any?, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSAttributedString {

    public struct EnumerationOptions : OptionSet {

        public init(rawValue: UInt)

        public static var reverse: NSAttributedString.EnumerationOptions { get }

        public static var longestEffectiveRangeNotRequired: NSAttributedString.EnumerationOptions { get }
    }

    public struct Key : Hashable, Equatable, RawRepresentable {

        public init(_ rawValue: String)

        public init(rawValue: String)
    }
}

@available(iOS 3.2, *)
open class NSMutableAttributedString : NSAttributedString {

    
    open func replaceCharacters(in range: NSRange, with str: String)

    open func setAttributes(_ attrs: [NSAttributedString.Key : Any]?, range: NSRange)
}

extension NSMutableAttributedString {

    
    open var mutableString: NSMutableString { get }

    
    open func addAttribute(_ name: NSAttributedString.Key, value: Any, range: NSRange)

    open func addAttributes(_ attrs: [NSAttributedString.Key : Any] = [:], range: NSRange)

    open func removeAttribute(_ name: NSAttributedString.Key, range: NSRange)

    
    open func replaceCharacters(in range: NSRange, with attrString: NSAttributedString)

    open func insert(_ attrString: NSAttributedString, at loc: Int)

    open func append(_ attrString: NSAttributedString)

    open func deleteCharacters(in range: NSRange)

    open func setAttributedString(_ attrString: NSAttributedString)

    
    open func beginEditing()

    open func endEditing()
}

@available(iOS 15.0, *)
public struct InlinePresentationIntent : OptionSet {

    public init(rawValue: UInt)

    
    public static var emphasized: InlinePresentationIntent { get }

    public static var stronglyEmphasized: InlinePresentationIntent { get }

    public static var code: InlinePresentationIntent { get }

    public static var strikethrough: InlinePresentationIntent { get }

    public static var softBreak: InlinePresentationIntent { get }

    public static var lineBreak: InlinePresentationIntent { get }

    public static var inlineHTML: InlinePresentationIntent { get }

    public static var blockHTML: InlinePresentationIntent { get }
}

@available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
extension InlinePresentationIntent : Hashable, Codable {
}
extension NSAttributedString.Key {

    
    @available(iOS 15.0, *)
    public static let inlinePresentationIntent: NSAttributedString.Key

    
    @available(iOS 15.0, *)
    public static let alternateDescription: NSAttributedString.Key

    
    @available(iOS 15.0, *)
    public static let imageURL: NSAttributedString.Key

    
    @available(iOS 15.0, *)
    public static let languageIdentifier: NSAttributedString.Key

    
    @available(iOS 15.0, *)
    public static let replacementIndex: NSAttributedString.Key

    
    // -----
    
    /// If the string has portions tagged with NSInflectionRuleAttributeName
    /// that have no format specifiers, create a new string with those portions inflected
    /// by following the rule in the attribute.
    
    @available(iOS 15.0, *)
    public static let morphology: NSAttributedString.Key

    
    @available(iOS 15.0, *)
    public static let inflectionRule: NSAttributedString.Key

    
    @available(iOS 15.0, *)
    public static let inflectionAlternative: NSAttributedString.Key

    
    @available(iOS 15.0, *)
    public static let presentationIntentAttributeName: NSAttributedString.Key
}
extension NSAttributedString {

    /// If the string has portions tagged with NSInflectionRuleAttributeName
    /// that have no format specifiers, create a new string with those portions inflected
    /// by following the rule in the attribute.
    @available(iOS 15.0, *)
    open func inflecting() -> NSAttributedString
}
*/
