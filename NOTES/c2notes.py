NOTES = """
(c) 2017 JUSTYN CHAYKOWSKI
PROVIDED UNDER MIT LICENSE

**POST SCARCITY** -and- **PLANNED OBSOLESCENCE**

## Post Scarcity - people are not fighting for materials (like food.) Common for an
  industrial society to be in post scarcity - people are not hungry.

## Planned Obsolescence - Practice of producing good with intentionally weak or
  ineffective components creating a device with short useful lives.
  Devices which become broken or obsolete very easily.
  
  1. **Contrived Durability**
    - Designing a product to break down quickly
    - Using cheap parts
  
  2. **Prevention of Repairs**
    - Physical
    - Legal
  
  3. **Style Obsolescence**
    - Wood grain PT cruiser
    - Top Teen has to own the Latest (apple)
    
  4. **Systematic Obsolescence**
    - Alter the system so that it becomes less useful over time.
    - Driving a particular system out of service/support (No updates!)
    - Abandon-ware
   
  5. **Programmed Obsolescence**
    - Writing into the system's computer code, a method by which the system
      degrades or slows down over time.
      - Apple (Inefficient use of battery.)
      
## Pro's and Con's of Planned Obsolescence:

  PRO's
    1. People buy more stuff
    2. More goods coming out faster, decreasing the value of older goods
    3. The economy keeps rolling along (When buyers are buying, the economy
       is doing well!)
  CON's
    1. HIGH wastage, bordering on ENCOURAGING waste.
    2. Takes advantage of the consumer. (Convincing them, influencing their
       choices, basically open manipulation and nearly theft.)
    
## Looking into Trevor's **"Hacker Toolkit"**

  - Digital Multimeter    Princess Auto      (Reads electrical current)
  - Sauter Iron
  - Tiny-head Screwdriver Set (Jeweler's Kit Presented as Example)
  - Pliers
  - Wire Stripper         Princess Auto
  - Breadboard
  - Arduino
  - Misc. extra wires
  - Duct Tape

Now we just rub Hank the octopus on our nips for a while...

Saw an IC (Integrated Circuit), and some Resistors

Saw the factory test pads inside of an octopus.
  - These will be looked at in more detail in future classes *
  
Fritzing software - for creating electronic circuits
http://fritzing.org/download/?donation=0

ROM Dumping and Reverse ROM Engineering - NOT TAUGHT IN THIS CLASS
-- MAY BE WORTH A GOOGLE !!

## Electronics:
  - **Electron**
    - One 'bit' of current
    
  - **Current**
  
    - Number of electron's which pass by a a point X per time Y
    - Measure is called Ampere's or **Amps**
    - Indicated by an I >> ("Intensity")
    
  - **Resistance**
    - Opposition to the current
    
  - **Voltage**
    - "Electron Pressure"
    - The amount of electronic force which is available at a particular point
      or as stored (like in a battery.)
    - The difference of 'voltage' in pos X compared to it's destination Y
      or 'potential difference'.
    - VOLTAGE IS RELATIVE TO THE MINIMUM VOLTAGE IN THE CIRCUIT -- WHERE IF
      THE MINIMUM VOLTAGE IS 3V, AND THE POINT MEASURED IS 5V, THEN THE VOLTAGE
      READ WILL BE 2V.

## **OHM'S LAW**
RELATIONSHIP BETWEEN VOLTAGE, CURRENT, AND RESISTANCE
  VOLTAGE = CURRENT(I) * RESISTANCE(OHM)
  VOLTAGE / RESISTANCE(OHM) = CURRENT(I)
  
Suddenly a list of electronic components:
  - Resistor - Resists an electronic flow*
  - Capacitor - Stores a charge until it reaches a certain intensity then
    discharges it all at once.
  - Diode - Electric component which only allows electricity to flow one
    direction
  - Light Emitting Diode (Diode + Resistance) - Same as Diode but also emits
    light.
  - Transistor - Acts as a switch and/or an amplifier (controls one flow
    by altering another smaller flow.) This is the basis for modern computer
    since ONE transistor is in effect, one BIT of DATA. By applying a small
    charge to the transistor, it is 'open' or 'ON', and if charge is removed
    than the flow is stopped and is thus 'closed' or 'OFF'.
  - Battery
  
  ,---RESISTOR---,
  |              |
  |              |
  |              |
 --- +           |
 BATTERY        LED
  -  -           |
  |              |
  |              |
  '--------------'
"""

if __name__ == ('__main__'):
    print(NOTES)
    print('Done.')

if __name__ != ('__main__'):
    print('c2_notes.py successfully imported.')
    print('c2_notes.NOTES the class notes.')
