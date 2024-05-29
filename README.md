# 🦦 LontraOS
_An embedded operating system for a miniature console._

## Objectives
- The Kernel should be small enough to fit on SRAM
- Decoupled engouh to permit driver updates without breaking the kernel
- Narrow-Purpose enough to not deviate from the target platform and application
- Performant to the maximum, allowing developers to explore the full potential from the hardware
- Failure-proof enough to immune the user from requesting technical support, or spending money for software repairs
- Secure enough to provide safety while not compromising the performance, allowing only ports that are necessary
## Rules
### Coding Style
- Functions are snake_case
- Variables are camelCase
- Enums, Structs, Types and Traits are PascalCase
- Enum variants and constants are UPPER CASE
- Indenting is 2 spaces
- No code from LLMs are permitted, unless allowed by the moderators
- All Results and Options are treated (no unwrap(), except for unwrap_or())
- No flags represented by booleans or integers, use Enums
- Cargo Clippy is your friend
- No unused variables (_) or imports
- Locality of Behavior in place of endless abstractions and Clean Code
- All programming paradigms are allowed, if they don't turn the code a mess
### Kernel Design
- All drivers are kernel-space
- The network stack is user-space (for preventing insecure user code from executing as the kernel)
- The File System is user-space and should be of a narrow set (yet to be decided)
- Graphics libraries and the Standard Library are user-space
- The Memory Manager should allow Heap allocations, in the GNU style of arena-heap
- All I/O is memory mapped by default
- The System should halt or suspend the processor and other CIs whenever possible
- Only one Game or App is in RAM at a time
- Kernel routines should take as little time/space from CPU/RAM as possible
- The GUI library is as compact as it gets
- The GUI is user-space.
