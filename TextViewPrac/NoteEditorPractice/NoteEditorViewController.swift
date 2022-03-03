/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit
// https://www.raywenderlich.com/5960-text-kit-tutorial-getting-started#



// MARK: - UITextViewDelegate
extension NoteEditorViewController: UITextViewDelegate {
  func textViewDidEndEditing(_ textView: UITextView) {
    note.contents = textView.text
  }
}


class NoteEditorViewController: UIViewController {
  
    var textView: UITextView!
    var textStorage: SyntaxHighlightTextStorage!
    
  var note: Note!
    
  override func viewDidLoad() {
    super.viewDidLoad()
      createTextView()

      textView.adjustsFontForContentSizeCategory = true
  }
    
  // called when the view dimensions change.
    override func viewDidLayoutSubviews() {
        textStorage.update()
    }
    
    func createTextView() {
        let attrs = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .body)]
        let attrString = NSAttributedString(string: note.contents, attributes: attrs)
        textStorage = SyntaxHighlightTextStorage()
        textStorage.append(attrString)
        
        let newTextViewRect = view.bounds
        
        let layoutManager = NSLayoutManager()
        
        let containerSize = CGSize(width: newTextViewRect.width, height: .greatestFiniteMagnitude)
        let container = NSTextContainer(size: containerSize)
        container.widthTracksTextView = true
        layoutManager.addTextContainer(container)
        textStorage.addLayoutManager(layoutManager)
        
        textView = UITextView(frame: newTextViewRect, textContainer: container)
        textView.delegate = self
        view.addSubview(textView)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            textView.topAnchor.constraint(equalTo: view.topAnchor),
            textView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}


/*
 Memo 를 NSMutableAttributedString 을 property 로 가지게 한다.
 didEditing 이 호출될 때마다, 그리고 어떤,, attributes 를 유저가 조작할 때마다,
 TextView 에서 Update 되도록 설정!
 Title 은 Regular expression 으로 attribute 설정.
 
 이거..로 만들면, 이미지들도 넣을 수 있음 ! 이것도 결국 NSAttributedString 의 일부니까. 아..알겠다!!! ??
 문제는,,, 어떤 범위에 어떤 Attributed String 을 넣었는데 하나하나 수정되면 어떻게 되는거지 ?
 어떻게 그 위치를 기억해 ? ? 글쎄다 ? 
 */
