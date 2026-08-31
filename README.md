# LabVIEW Frameworks: A Reference Implementation Comparison
A repository for a quick overview and comparison of common frameworks in LabVIEW. For a fair, real-code comparison, an example reference application is implemented using each LabVIEW framework.

## Why this repo exists

Framework documentation tells you what a framework *can* do. It rarely shows you what the same real application looks like end to end in each one — how modules are structured, how they talk to each other, how much boilerplate is involved, how it feels to extend. That's what this repo is for: one reference application, implemented independently by someone who actually uses each framework, so the comparison is fair and the code is trustworthy.

## The reference application

All implementations build the same application, defined in [`/reference_app/SPEC.md`](./reference_app/SPEC.md). That spec is the contract every framework folder is expected to satisfy — same functional requirements, same UI behavior, same interfaces, so no implementation gets an easier or harder job than another.

## Repository structure

```
labview_frameworks/
├── reference_app/
│   └── SPEC.md            # The shared functional spec every implementation follows
├── ni_qmh/
├── jki_state_machine/
├── jki_smo/
├── dqmh/
├── actor_framework/
├── workers/
├── dcaf/
├── aloha/
├── messenger_library/
└── README.md
```

Each framework folder is self-contained: the LabVIEW project, source code, and its own short `README.md` covering:

- LabVIEW version used, and any required dependencies (VIPM packages, toolkits, drivers)
- How to open and run the example
- Any place the implementation had to deviate from the spec, and why

## Contributing an implementation

Contributions from framework maintainers, contributors, and experienced users are welcome. To add or update an implementation:

1. Read `reference_app/SPEC.md` and build to that spec — don't add scope beyond it, so comparisons stay fair
2. Put your work in the matching top-level folder (open an issue first if you're proposing a framework not yet listed)
3. Include a `README.md` in your folder with the version/dependency info above
4. Keep hardware dependencies simulated or abstracted where possible — contributors won't all have the same physical hardware on hand
5. Note your name/handle in your folder's `README.md` if you'd like attribution as that framework's maintainer

If you're updating someone else's existing implementation (bug fix, LabVIEW version bump, etc.), please open a PR rather than pushing directly, so the original author can weigh in.

## Scope note

This repository is code only. There's a companion slide deck covering the same frameworks conceptually (patterns vs. frameworks, architecture, trade-offs), maintained separately by the authors — it isn't part of this repo.

## Maintainers

Ravi Beniwal ([@binarypalette](https://github.com/binarypalette))
