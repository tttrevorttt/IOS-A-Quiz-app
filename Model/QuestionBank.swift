//
//  QuestionBank.swift
//  QuizA+
//
//  Created by Trevor on 5/1/19.
//  Copyright © 2019 Trevor Gorham. All rights reserved.
//

import Foundation
class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Which of these command lines would check a disk for bad sectors and attempt to recover readable information?\n\nA: chkdsk /f\nB: chkdsk /r\nC: chkdsk /d\nD: chkdisk /recover", correctAnswer: [1] )
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "What is the maximum number of partitions that you can have on a disk with the MBR partition type?\n\nA: 4\nB: 2\nC: 64\nD: 8", correctAnswer: [0]))
        list.append(Question(text: "You've been asked to remove a hard drive from one computer and install the drive into a computer in another building. Which of these would be the best way to transport the hard drive from one building to another?\n\nA: Place the hard drive in a cushioned anti-static bag\nB: Use bubble wrap to protect the drive during transport\nC: Pack the hard drive in a box of foam penuts\nD: Hard drives park their heads while they are off, so you can just put it in a manila folder", correctAnswer: [0]))
        list.append(Question(text: "Your computer has just restarted after a Windows Stop Error, but you didn't see the details of the error. What Windows utility can provide you with the details of this most recent crash?\n\nA: Services\nB: Performance Monitor\nC: Task Manager\nD: Event Viewer", correctAnswer: [3]))
        list.append(Question(text: "Which of these operating systems can be upgraded directly to Windows 7 Professional with an in-place upgrade?\n\nA: Windows XP Professional\nB: Windows Visa Businuss\nC: Windows XP Professional (x64)\nD: Windows Vista Enterprise", correctAnswer: [1]))
        list.append(Question(text: "Which of these would you commonly find in the first sector of a storage device?\n\nA: BIOS \nB: Registry\nC: Master Boot Record\nD: Boot Loader", correctAnswer: [2]))
        list.append(Question(text: "Which port number is commonly associated with the Remote Desktop protocol?\n\nA: tcp/3389 \nB: tcp/69\nC: udp/3398 \nD: tcp/583", correctAnswer: [0]))
        list.append(Question(text: "What is the best way to dispose of old laptop batteries?\n\nA: Wrap the batteries in paper, then place them in the trashcan \nB: The company that sold the batterys are legaly required to accept the bateries if returned.\nC: Follow directions from the MSDS\nD: Take the batteries appart to break down the chemicals", correctAnswer: [2]))
        list.append(Question(text: "You've connected a new wireless mouse and keyboard combo, but the installation program isn't recognizing the new USB wireless transceiver. Which of these Windows utilities would be the best choice for determining the status of the new hardware?\n\nA: Driver Manager\nB: Device Manager\nC: Control Panel / Keyboard\nD: Event Log", correctAnswer: [1]))
        list.append(Question(text: "One of your customers has dropped off their laptop at your repair desk. A message taped to the laptop states: 'Doesn't work.' Which of these would be the best next step?\n\nA: Start the laptop and look for any issues\nB: Call the customer and ask for more information\nC: Replace the power adampter, and try booting the laptop\nD: Use a diagnostic CD to determine the cause of the problem", correctAnswer: [2]))
        

    }
    
}



