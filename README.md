myCountdown - simple example of a Countdown timer in Swift
=================
October/November iOS Bootcamp, Codepath.com (observer class)

Please also see README.md for MZTimerLabel, listed below

Examples:

-- Initialize your timer, using a UILabel for the countdown display:
 var mycountdownTimer = MZTimerLabel(label: myUILabel, andTimerType: MZTimerLabelTypeTimer)
 
-- Control your timer
mycountdownTimer.start()
mycountdownTimer.pause()
mycountdownTimer.reset()
 
-- Implement your delegate (for what to do when countdown is complete)
 protocol MZTimerLabelDelegate
  
 delegate method:
 func timerLabel(timerLabel: AnyObject!, finshedCountDownTimerWithTime countTime: NSTimeInterval){
 //what should I do now that countdown is done?
 }


--> Cocoapods (external libs) used
* [MZTimerLabel](https://github.com/mineschan/MZTimerLabel)



