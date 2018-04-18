//
//  PViCadeGameSirG3sController.m
//  Provenance
//
//  Created by jajajaime on 4/16/18.
//

#import "PViCadeGameSirG3sController.h"
#import "PViCadeGamepad.h"
#import "PViCadeGamepadButtonInput.h"
#import "PViCadeGamepadDirectionPad.h"

@implementation PViCadeGameSirG3sController

-(instancetype) init {
    if (self = [super init]) {
        __unsafe_unretained PViCadeController* weakSelf = self;
        self.reader.buttonDown = ^(iCadeState button) {
            switch (button) {
                case 0x34:
                case 0x7F:
                case 0x127:
                case 0x008:
                case 0x009:
                    [[weakSelf.iCadeGamepad buttonX] buttonPressed];
                    break;
                case 0x5B:
                case 0x91:
                case 0x31:
                    [[weakSelf.iCadeGamepad buttonA] buttonPressed];
                    break;
                // case iCadeButtonA:
                //     [[weakSelf.iCadeGamepad buttonX] buttonPressed];
                //     break;
                // case iCadeButtonB:
                //     [[weakSelf.iCadeGamepad buttonA] buttonPressed];
                //     break;
                // case iCadeButtonC:
                //     [[weakSelf.iCadeGamepad buttonB] buttonPressed];
                //     break;
                // case iCadeButtonD:
                //     [[weakSelf.iCadeGamepad buttonY] buttonPressed];
                //     break;
                // case iCadeButtonE:
                //     [[weakSelf.iCadeGamepad rightShoulder] buttonPressed];
                //     break;
                // case iCadeButtonF:
                //     [[weakSelf.iCadeGamepad leftShoulder] buttonPressed];
                //     break;
                // case iCadeButtonG:
                //     [[weakSelf.iCadeGamepad leftTrigger] buttonPressed];
                //     break;
                // case iCadeButtonH:
                //     [[weakSelf.iCadeGamepad rightTrigger] buttonPressed];
                //     break;
                // case iCadeJoystickDown:
                // case iCadeJoystickLeft:
                // case iCadeJoystickRight:
                // case iCadeJoystickUp:
                //     [[weakSelf.iCadeGamepad dpad] padChanged];
                //     break;
                default:
                    break;
            }
            if (weakSelf.controllerPressedAnyKey) {
                weakSelf.controllerPressedAnyKey(weakSelf);
            }
        };
        
        self.reader.buttonUp = ^(iCadeState button) {
            switch (button) {
                case 0x7F:
                case 0x127:
                case 0x34:
                case 0x008:
                case 0x009:
                    [[weakSelf.iCadeGamepad buttonA] buttonReleased];
                    break;
                case 0x5B:
                case 0x91:
                case 0x31:
                    [[weakSelf.iCadeGamepad buttonB] buttonReleased];
                    break;
                // case iCadeButtonA:
                //     [[weakSelf.iCadeGamepad buttonX] buttonReleased];
                //     break;
                // case iCadeButtonB:
                //     [[weakSelf.iCadeGamepad buttonA] buttonReleased];
                //     break;
                // case iCadeButtonC:
                //     [[weakSelf.iCadeGamepad buttonB] buttonReleased];
                //     break;
                // case iCadeButtonD:
                //     [[weakSelf.iCadeGamepad buttonY] buttonReleased];
                //     break;
                // case iCadeButtonE:
                //     [[weakSelf.iCadeGamepad rightShoulder] buttonReleased];
                //     break;
                // case iCadeButtonF:
                //     [[weakSelf.iCadeGamepad leftShoulder] buttonReleased];
                //     break;
                // case iCadeButtonG:
                //     [[weakSelf.iCadeGamepad leftTrigger] buttonReleased];
                //     break;
                // case iCadeButtonH:
                //     [[weakSelf.iCadeGamepad rightTrigger] buttonReleased];
                //     break;
                // case iCadeJoystickDown:
                // case iCadeJoystickLeft:
                // case iCadeJoystickRight:
                // case iCadeJoystickUp:
                //     [[weakSelf.iCadeGamepad dpad] padChanged];
                //     break;
                default:
                    break;
            }
        };
    }
    return self;
}

- (NSString *) vendorName {
    return @"GameSir G3s";
}

@end
