# <FRAMEWORK NAME> Reference Implementation

Implements the [reference application spec](../reference_app/SPEC.md) using <FRAMEWORK NAME>.

## Environment

| | |
|---|---|
| LabVIEW version | <TODO: e.g. 2021, 32-bit or 64-bit> |
| Framework version | <TODO: e.g. ships with LabVIEW / VIPM package version X.Y.Z> |
| Other dependencies | <TODO: any additional VIPM packages, drivers, or toolkits — or "None"> |
| OS tested on | <TODO: e.g. Windows 10/11> |

## How to run

1. Open `<TODO: project file name>.lvproj` in LabVIEW <TODO: version>
2. Run `<TODO: top-level/launcher VI>.vi`
3. <TODO: any other steps — which VI to interact with, what "running" looks like, how to stop it cleanly>

## Architecture notes

How the three required processes from the spec map onto this framework's constructs:

| Spec process | Implemented as |
|---|---|
| Device Manager | <TODO> |
| Servo Motor Emulator | <TODO> |
| Front Panel Emulator | <TODO> |

<TODO: a short paragraph on the module/process shape, the internal IPC mechanism used for position/telemetry, and anything about this framework's idioms worth calling out to someone comparing implementations>

## Deviations from spec

<TODO: note anything here that doesn't match `reference_app/SPEC.md` exactly, and why. If there are none, say "None.">

## Known issues / limitations

<TODO: anything incomplete, any rough edges, anything you'd fix given more time>

## Folder structure

```
<TODO: framework_folder_name>/
├── README.md              # this file
├── <TODO: project file>.lvproj
└── <TODO: source folders — fill in the real layout>
```

## Maintainer

<TODO: your name/handle, if you'd like attribution as this folder's maintainer — e.g. "Jane Doe ([@janedoe](https://github.com/janedoe))">
