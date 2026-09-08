# Workers for LabVIEW Reference Implementation

Implements the [reference application specification](../reference_app/SPEC.md) using Workers for LabVIEW.

## Environment

| | |
|---|---|
| LabVIEW version | LabVIEW 2017 |
| Framework version | Workers for LabVIEW 5.0 |
| Other dependencies | None |
| OS tested on | Windows 11 |

## How to run

1. Open **Servo Motor Project/Servo Motor Project - Workers.lvproj** in LabVIEW.
2. Run **Launcher - Device Manager.vi** from the **Launchers** folder.
3. The Main VIs of the three Workers will open:
   - Device Manager
   - Front Panel Emulator
   - Servo Motor Emulator
4. Use the **Position** control on the Front Panel Emulator to request a new servo position.
5. The requested position is forwarded through the Device Manager and displayed on the Servo Motor Emulator.
6. Change the **Temperature** and **RH** controls on the Servo Motor Emulator to simulate telemetry from the device.
7. Temperature and relative humidity are forwarded through the Device Manager and displayed on the Front Panel Emulator LCD.
8. Press **CLEAN SHUTDOWN** on the Device Manager to shut down the application.

## Architecture notes

The three required asynchronous processes are implemented as Workers:

| Spec process | Implemented as |
|---|---|
| Device Manager | Worker - Head |
| Front Panel Emulator | Worker - statically-linked to Head |
| Servo Motor Emulator | Worker - statically-linked to Head |

The Device Manager is the head Worker of the application and owns both emulator Workers within the application's Worker call-chain hierarchy.

Communication between Workers uses their Public APIs.

The Front Panel Emulator sends the requested position to the Device Manager using a Public Response. The Device Manager forwards the requested position to the Servo Motor Emulator using a Public Request.

The Servo Motor Emulator sends temperature and relative humidity to the Device Manager using Public Responses. The Device Manager forwards these values to the Front Panel Emulator using Public Requests.

The two emulator Workers have no direct dependency on, or reference to, each other. All communication between them is mediated by the Device Manager.

Application initialization and shutdown are managed through the standard Workers hierarchical lifecycle. The Device Manager initializes and manages both subWorkers and waits for them to exit during application shutdown.

## Deviations from spec

None.

## Known issues / limitations

None.

## Project structure

    Servo Motor Project/
    ├── Launchers/
    ├── Workers/
    │   ├── Device Manager/
    │   ├── Front Panel Emulator/
    │   └── Servo Motor Emulator/
    └── Servo Motor Project - Workers.lvproj

The **Workers** folder contains the three Worker classes used by the application:

- **Device Manager.lvclass** — head Worker
- **Front Panel Emulator.lvclass** — statically-linked subWorker
- **Servo Motor Emulator.lvclass** — statically-linked subWorker

The **Launchers** folder contains the Launcher VI used to start the application.

## Maintainer

Peter Scarfe ([@scarfecontrols](https://github.com/scarfecontrols))
