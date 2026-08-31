# Actor Framework Reference Implementation

Implements the [reference application spec](../reference_app/SPEC.md) using NI's **Actor Framework**.

> This README doubles as the template for other framework folders in this repo. If you're adding a new implementation, copy this file, keep the section headings, and fill in the details for your framework.

## Environment

| | |
|---|---|
| LabVIEW version | 2020 <!-- 32-bit or 64-bit? note here --> |
| Framework version | Ships with LabVIEW — no separate install required <!-- confirm palette/version if it matters --> |
| Other dependencies | None <!-- list any VIPM packages, drivers, or toolkits here --> |
| OS tested on | Windows 11 |

## How to run

1. Open `"\actor_framework\Servo Motor Project\Servo Motor Project - AF.lvproj"` in LabVIEW 2020 or later.
2. Run `Launch Servo Motor.vi`
3. Change the control(s) on the Motor and Panel, verify the response on the other.

## Architecture notes

How the three required processes from the spec map onto this framework's constructs:

| Spec process | Implemented as |
|---|---|
| Device Manager | Root Actor, `Device Manager.lvclass` |
| Servo Motor Emulator | child actor, `Servo Motor Emulator.lvclass` |
| Front Panel Emulator | child actor, `Front Panel Emulator.lvclass` |

Two Interfaces were used:
|Interface Name|Ability (Messages for Actor implementing the Interface)|
|---|---|
| Motor | Set Position |
| Panel | Report Position, Report Temperature, Report Relative Humidity |

- Servo Motor Emulator implements Motor interface.
- Front Panel Emulator implements Panel interface.
- Device Manager implements both Motor and Panel interface

## Deviations from spec

None

## Known issues / limitations

None

## Folder structure

```
actor_framework
├── README.md              # this file
├── Servo Motor Project
    ├── Servo Motor Project - AF.lvproj
    ├── Launch Servo Motor.vi
    └── other module folders...
```

## Maintainer

Ravi Beniwal ([@binarypalette](https://github.com/binarypalette))