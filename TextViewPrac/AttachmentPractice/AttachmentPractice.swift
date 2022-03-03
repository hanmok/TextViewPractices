//
//  AttachmentPractice.swift
//  TextViewPrac
//
//  Created by 이한목 on 2022/03/04.
//

import Foundation

// create an NSMutableAttributedString that we'll append everything to
let fullString = NSMutableAttributedString(string: "Start of text")

// create our NSTextAttachment
let image1Attachment = NSTextAttachment()
image1Attachment.image = UIImage(named: "awesomeIcon.png")

// wrap the attachment in its own attributed string so we can append it
let image1String = NSAttributedString(attachment: image1Attachment)

// add the NSTextAttachment wrapper to our full string, then add some more text.
fullString.append(image1String)
fullString.append(NSAttributedString(string: "End of text"))

// draw the result in a label
yourLabel.attributedText = fullString
