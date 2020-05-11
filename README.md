# Pre-work - *ezTippin*

**ezTippin** is a tip calculator application for iOS.

Submitted by: **Caitlyn Chen**

Time spent: **12** hours spent in total

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
- [X] Tint of segment on segmentedcontrol matches tint of gradient color at that x position
- [ ] Can enter custom tip percentage value and number of ways to split in the segmentedcontrol
- [ ] Round up and round down buttons
- [ ] Can choose between different themes/moods for the colors of the app in settings view
- [ ] Can choose local customs for tipping and select type of service (delivery, takeout, restaurant), to determine standard tip percentage
- [X] App icons
- [ ] Compatible with all device types and sizes
- [ ] Can see suggestions of coin/bill breakdowns with images of what each coin/bill looks like next to the corresponding value, which would help travelers not familiar with the local currency (traveler mode in settings, pay with cash or credit card options)

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

Version 1:



<img src='http://g.recordit.co/qhC1mSoNlH.gif' title='Video Walkthrough' width='250' alt='Video Walkthrough' /> 

Version 2:



<img src='http://g.recordit.co/Nden70S0tk.gif' title='Video Walkthrough' width='250' alt='Video Walkthrough' /> 

Version 3:



<img src='http://g.recordit.co/lEIIJqeXeT.gif' title='Video Walkthrough' width='250' alt='Video Walkthrough' /> 

## Challenges: Changing the color of a selected segment
1) - change color of highlighted portion of selected segment on segmentedControl to match blue gradient background of bill amount area - sortof 
        - did calculations to determine what color of particular segment should be based on x position across gradient,                 divided segments into halves as middle color matches the most
                - (for example, for top half of gradient, leftmost would be blue and top right corner would be blue +                           width/(width + height) * (white - blue))
                - then the color of segment n would be leftmost color + 1/14 of the color difference between the rightmost                       color and the leftmost color
                - ^ do above calculations for each r, g, b value
        - split each segment into halves for optimal color matching by middle color
        - big challenge, hacky code to resolve compatibility issue of iOS12 of not having the segmentedControl method of                changing the color of a particular segment: "As of iOS 13b3, there is now a selectedSegmentTintColor on                        UISegmentedControl."
        - discovered that compiler is reallyyy slow in type-checking complex expressions in reasonable time
        - really hard to change default settings of segmentedControl, but finally did it!

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

DONE:
1) - indicate tip value below bill value - yup
2) - have cursor be displayed immediately when user opens app - yup
3) - dollar sign in the bill total text field - yup
        - ran into problems with this in converting newly formatted currency string to double
            - fixed this by splitting into array without delimiters and then rejoining
4) - design ezTippin gradient app icon (kind of like Instagram's) - yup
5) - (hidden lol) shimmer animated title launch screen (using gradient masks)
        - can't assign launch screen to class so had to use another view controller in main storyboard but too tedious to click through
6) - change color of highlighted portion of selected segment on segmentedControl to match blue gradient background of bill amount area - fixed
7) - actually get different gradient shades for selected segment on segmentedControl - so hard to change default settings of segmentedControl but finally did it!
8) changed tintColor of selected segment to black for better visibility and also in accordance with good segmentedControl selection practice

## More Notes

TODO's:
1) - implement X and X%
2) - settings screen to save default values
3) - round up and round down buttons
4) - #neon, #ocean, #violetlights color background views
5) - currency formatting for tipLabel and Total per person label (dollar sign, commas)


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
