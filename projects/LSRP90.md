The LSRP-90 is a high precision inclinometer which uses a test mass in an oil filled chamber. It provides 

#### Electrical Specifications
* ±12-18 volt DC supplies
* 15 mA current consumption
* ±5 volt Full Range Output
* 4k Ohm output impedance

#### Performance Specifications
* Output Noise 0.002 Vrms
* Non-Repeatability 0.0005% of FRO
* -3 dB Frequency 40 Hz
* Zero Offset ±0.02 Volts max
* Non-Linearity (least squares) 0.05 % of FRO
* Resolution?Accuracy? = 40 arcseconds, 0.0011 degrees

#### Pinout
* A = +12 to 18 volts
* B = GND
* C = -12 to -18 volts
* D = Output
* E = Self Test

#### Usage Notes

The output is sinusoidal in nature.

$ Angle = \sin^{-1}\left(\frac{V_{out}}{5}\right) $

#### Thoughts

$0.001^{\circ} = \frac{1}{163,636} * 180^{\circ}$ so at least $2^{18} = 262,144$ bits of linear and noise-free range will be needed to not degrade the resolution of the sensor. The accuracy is rated to be ~$0.09^{\circ}$ which is only $\frac{1}{2000}$th of the full range, needing a considerably lower resolution ADC.

$\frac{1}{163,636}*10\text{V} = 0.061 \text{millivolts}$ and the output noise is 2 millivolts?