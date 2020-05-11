# Pre-work - *ezTippin*

**ezTippin** is a tip calculator application for iOS.

Submitted by: **Caitlyn Chen**

Time spent: **9** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [ ] Settings page to change the default tip percentage.
* [X] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Split the bill with friends
- [X] Visually appealing gradient background
- [ ] Tint of segment on segmentedcontrol matches tint of gradient color at that x position
        - use geometry: 
- [ ] Can enter custom tip percentage value and number of ways to split in the segmentedcontrol
- [ ] Round up and round down buttons
- [ ] Can choose between different themes/moods for the colors of the app in settings view
- [ ] Can choose local customs for tipping and select type of service (delivery, takeout, restaurant), to determine standard tip percentage
- [ ] App icons
- [ ] Compatible with all device types and sizes
- [ ] Can see suggestions of coin/bill breakdowns with images of what each coin/bill looks like next to the corresponding value, which would help travelers not familiar with the local currency (traveler mode in settings, pay with cash or credit card options)

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

Version 1:



<img src='http://g.recordit.co/qhC1mSoNlH.gif' title='Video Walkthrough' width='250' alt='Video Walkthrough' /> 

Version 2:



<img src='http://g.recordit.co/Nden70S0tk.gif' title='Video Walkthrough' width='250' alt='Video Walkthrough' /> 

## Changing the color of a selected segment
1) - change color of highlighted portion of selected segment on segmentedControl to match blue gradient background of bill amount area - sortof 
        - did calculations to determine what color of particular segment should be based on x position across gradient
        - big challenge, hacky code to resolve compatibility issue of iOS12 of not having the segmentedControl method of                changing the color of a particular segment: "As of iOS 13b3, there is now a selectedSegmentTintColor on                        UISegmentedControl."
        - discovered that compiler is reallyyy slow in type-checking complex expressions in reasonable time
        - (not sure if able to have different colors for each segment in the segmentedControl, as seen in the following gif)
        
<img src='http://g.recordit.co/7GEBu6VJka.gif' title='Video Walkthrough' width='750' alt='Video Walkthrough' /> 

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

DONE:
1) - indicate tip value below bill value - yup
2) - have cursor be displayed immediately when user opens app - yup
3) - dollar sign in the bill total text field - yup
        - ran into problems with this in converting newly formatted currency string to double
            - fixed this by splitting into array without delimiters and then rejoining
4) - design ezTippin gradient app icon (kind of like Instagram's) - yup
5) - (hidden lol) shimmer animated title launch screen (using gradient masks)
        - can't assign launch screen to class so had to use another view controller in main storyboard but too tedious to click through
6) - change color of highlighted portion of selected segment on segmentedControl to match blue gradient background of bill amount area - sortof 

## More Notes

TODO's:
1) - implement X and X%
2) - settings screen to save default values
3) - round up and round down buttons
4) - #neon, #ocean, #violetlights color background views
5) - actually get different gradient shades for selected segment on segmentedControl

## License

    Copyright @2020 Caitlyn Chen

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
