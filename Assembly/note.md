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
  - 8 bytes (64 bits): Known as a “quadword”4
