import UIKit

public protocol PostConvertible {

  var wallModel: Post { get }
}

public class Post {

  public var id = 0
  public var publishDate = ""
  public var text = ""
  public var liked = false
  public var seen = false
  public var likeCount = 0
  public var seenCount = 0
  public var commentCount = 0
  public var images = [NSURL]()
  public var author: Author?

  public init(text: String = "", publishDate: String, author: Author? = nil,
    attachments: [NSURL] = []) {
      self.text = text
      self.publishDate = publishDate
      self.author = author
      self.images = attachments
  }
}

// MARK: - PostConvertible

extension Post: PostConvertible {

  public var wallModel: Post {
    return self
  }
}
