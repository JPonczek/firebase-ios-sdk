/*
 * Copyright 2018 Google
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import UIKit
import FirebaseInAppMessagingDisplay
import FirebaseInAppMessaging

class ModalMessageViewController: CommonMessageTestVC {
  let displayImpl = InAppMessagingDefaultDisplayImpl()

  @IBOutlet var verifyLabel: UILabel!

  override func messageClicked() {
    super.messageClicked()
    verifyLabel.text = "message clicked!"
  }

  override func messageDismissed(dismissType dimissType: FIRInAppMessagingDismissType) {
    super.messageClicked()
    verifyLabel.text = "message dismissed!"
  }

  @IBAction func showRegular(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let imageRawData = produceImageOfSize(size: CGSize(width: 200, height: 200))
    let fiamImageData = InAppMessagingImageData(imageURL: "url not important", imageData: imageRawData!)

    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: normalMessageTitle,
                                                  bodyText: normalMessageBody,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: fiamImageData,
                                                  actionButton: defaultActionButton)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithoutImage(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: normalMessageTitle,
                                                  bodyText: normalMessageBody,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: nil,
                                                  actionButton: defaultActionButton)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithoutButton(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let imageRawData = produceImageOfSize(size: CGSize(width: 200, height: 200))
    let fiamImageData = InAppMessagingImageData(imageURL: "url not important", imageData: imageRawData!)

    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: normalMessageTitle,
                                                  bodyText: normalMessageBody,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: fiamImageData,
                                                  actionButton: nil)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithoutImageAndButton(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: normalMessageTitle,
                                                  bodyText: normalMessageBody,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: nil,
                                                  actionButton: nil)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithLargeBody(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: normalMessageTitle,
                                                  bodyText: longBodyText,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: nil,
                                                  actionButton: defaultActionButton)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithLargeTitleAndBody(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let imageRawData = produceImageOfSize(size: CGSize(width: 200, height: 200))
    let fiamImageData = InAppMessagingImageData(imageURL: "url not important", imageData: imageRawData!)

    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: longBodyText,
                                                  bodyText: longBodyText,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: fiamImageData,
                                                  actionButton: defaultActionButton)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithLargeTitle(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: longBodyText,
                                                  bodyText: normalMessageBody,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: nil,
                                                  actionButton: defaultActionButton)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithLargeTitleAndBodyWithoutImage(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: longBodyText,
                                                  bodyText: longBodyText,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: nil,
                                                  actionButton: defaultActionButton)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithLargeTitleWithoutBodyWithoutImageWithoutButton(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: longBodyText,
                                                  bodyText: "",
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: nil,
                                                  actionButton: nil)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithWideImage(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let imageRawData = produceImageOfSize(size: CGSize(width: 600, height: 200))
    let fiamImageData = InAppMessagingImageData(imageURL: "url not important", imageData: imageRawData!)

    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: normalMessageTitle,
                                                  bodyText: normalMessageBody,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: fiamImageData,
                                                  actionButton: defaultActionButton)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  @IBAction func showWithThinImage(_ sender: Any) {
    verifyLabel.text = "Verification Label"
    let imageRawData = produceImageOfSize(size: CGSize(width: 200, height: 600))
    let fiamImageData = InAppMessagingImageData(imageURL: "url not important", imageData: imageRawData!)

    let modalMessage = InAppMessagingModalDisplay(messageID: "messageId",
                                                  renderAsTestMessage: false,
                                                  titleText: normalMessageTitle,
                                                  bodyText: normalMessageBody,
                                                  textColor: UIColor.black,
                                                  backgroundColor: UIColor.blue,
                                                  imageData: fiamImageData,
                                                  actionButton: defaultActionButton)

    displayImpl.displayMessage(modalMessage, displayDelegate: self)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
