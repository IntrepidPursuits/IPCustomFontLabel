##IPCustomFontLabel

1. Add your custom font to the project. [See here](http://jaysonlane.net/2012/07/using-custom-fonts-on-iphone-ipad/) for instructions.
2. Add `IPCustomFontLabel.h` and `IPCustomFontLabel.m` to your project.
3. Select your label in interface builder, and navigate to the identity inspector.
4. Set the "Custom Class" to `IPCustomFontLabel` 
   
   ![custom class tab](http://i.imgur.com/HH5e7Sd.png)

5. Under "User Defined Runtime Attributes", set the properties you wish to modify. 
   
   ![user defined runtime attributes tab](http://i.imgur.com/prnw1Se.png)

##Available properties:

|keyPath       |type        |value                                   |
|`fontFamily`  |String      |The desired PostScript font family name |