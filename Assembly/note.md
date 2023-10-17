## 1-5 Types of Assembly Language
Note that there is not a single type of machine language for all computers, although most PCs share the same machine language.  
Machine languages are usually divided up by **instruction set architecture (ISA)**.

Almost all modern PCs use the **x86-64** ISA (sometimes referred to as **AMD64**).  
Older PCs use the x86 ISA (this is the 32-bit version of x86-64).  
Many cell phones use a variation of the **ARM** ISA.  
Finally, some older game consoles (and really old Macs) use the **PowerPC** ISA.

Since assembly language uses human-readable symbols that translate into machine code,  
different groups have implemented assembly language using different syntaxes.  
The two main syntaxes are NASM syntax (sometimes called Intel syntax) and AT&T (sometimes called GAS) syntax.

## 2-1 What Computer Can Do
All computers boil down to the same basic instructions.  
So what is it that computers can do computationally? Computers can
- Do basic integer arithmetic
- Do memory access
- Compare values
- Change the order of instruction execution based on a previous comparison

## 2-3 Basic Computer Organization
Computers consist of the following basic parts:
  - The CPU (also referred to as the processor or microprocessor): 
    1. CPU handles all computation and essentially coordinates all of the tasks that occur in a computer.
  - Working memory:
    1. usually referred to as RAM, which stands for “random access memory.”
    2. The working memory is usually wiped out when the computer gets turned off.
  - Permanent storage:
    1. is your hard drive(s), whether internal or external, plus USB sticks, or whatever else you store files on.
  - Peripherals:
    1. Everything else connected to your computer gets classified as a peripheral.
  - System bus:
    1. Buses handle communication between the various components of the computer,
       usually between the CPU and other peripherals and between the CPU and main memory.

## 2-4 How Computer See Data
Everything that happens in a computer is ultimately reducible to the flow of electricity.  
In order to make that happen, engineers had to come up with a way to represent things  
with flows of electricity.  
To simplify things, engineers ultimately decided to only make two symbols. **These  
can be thought of as “on” (voltage present) and “off” (no voltage present)**, “true”  
and “false,” or “1” and “0.” Limiting to just two symbols greatly simplifies the task of  
engineering computers.

## 2-5 
Computer is storing all of these things as numbers.  
This is why files have extensions like .docx, .png, .mov, or .xlsx.  
These extensions tell the computer how to interpret what is in the file.  
What’s even more amazing, though, is that the computer’s instructions are themselves just numbers as well.

## 2-6 Referring to Memory
You can think of memory as boxes, where each box is 1 byte big.  
Each memory box has an address, which tells the computer how to find it.  
Different size values have various names on the x86-64 platform.  
These names come from the fact that the ancestor of the x86-64 was a 16-bit processor. Typical sizes include
  - 1 byte (8 bits): Typically just referred to as a byte
  - 2 bytes (16 bits): Known as a “word” or a “short”
  - 4 bytes (32 bits): Known as a “double-word” or an “int”
  - 8 bytes (64 bits): Known as a “quadword”
The memory itself doesn’t have any knowledge of whether or not a value is a single byte or multiple bytes.  
For the memory, it is all stored a byte at a time. However, if you were to access a memory location as a quadword  
(i.e., 8 bytes), it would treat the memory at that address and the next seven locations after as a single unit.

## 2-7 The Structure of the CPU
The common conceptual parts of a CPU are
- Registers  
    1. Tiny blocks of memory inside the processor itself. . These are bits of data that the processor can access directly without waiting.
    2. Some registers also have special purposes, such as pointing to the next instruction to be carried out, holding some sort of processor status, or being able to be used for some special processor function.
- Control unit
    1. sets the pacing for the chip. It handles the coordination of all the different parts of the chip.
- Arithmetic and logic unit (ALU)
    1. It does the additions, subtractions, comparisons, etc. The ALU is normally wired so that basic operations can be done with registers extremely quickly.
- Memory management unit
    1. it manages the way that the processor sees and understands memory addresses.
- Caches
    1. A piece of memory that holds other memory closer to the CPU
    2. CPUs implement all sorts of caches, each of which cache different things for different reasons, and even have different access speeds.

## 2-8 The Fetch-Execute Cycle
The way that the processor runs programs is through the **fetch-execute cycle**.  
The computer essentially runs an endless cycle of the following operations:
1. Read the instruction from the memory address specified by the **instruction pointer(IP)**.
2. Decode the instruction (i.e., figure out what the instruction means).
3. Advance the instruction pointer to the next instruction.
4. Perform the operation indicated by the instruction.
Each instruction is extremely limited in its operation. Available instructions do operations like the following:
- Load a value from memory into a register.
- Store a value from a register into memory.
- Do a single arithmetic operation.
- Compare two values.
- Go to a different location in the code (i.e., modify the instruction pointer) based on the result of a previous comparison.

## 2-9 Adding CPU Cores
A CPU core is like a CPU, but more than one of them may exist on a single chip, and while each core is largely independent of the other cores on the same chip, the cores may share a certain amount of circuitry, such as caches.<br>
If one core had a piece of memory stored in one of its caches and another core modified that same data. Getting that change communicated to the other cores can be a challenging prospect for hardware engineers. This is known as the cache coherence problem.<br>
It is usually solved by having the CPUs and caches implement what is known as the MESI protocol, which basically allows caches to tell other caches they need to update their values.
