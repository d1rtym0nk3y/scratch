<!---
This library is part of the Common Function Library Project. An open source
	collection of UDF libraries designed for ColdFusion 5.0 and higher. For more information,
	please see the web site at:

		http://www.cflib.org

	Warning:
	You may not need all the functions in this library. If speed
	is _extremely_ important, you may want to consider deleting
	functions you do not plan on using. Normally you should not
	have to worry about the size of the library.

	License:
	This code may be used freely.
	You may modify this code as you see fit, however, this header, and the header
	for the functions must remain intact.

	This code is provided as is.  We make no warranty or guarantee.  Use of this code is at your own risk.
--->

<cfscript>
/**
 * Returns the inverse hyperbolic cosine of a value.
 * 
 * @param x 	 Any real number. 
 * @return Returns an angle in radians. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, November 29, 2001 
 */
function Acosh(x)
{
  Var RetVal = 0;
  if (x LTE 1.0) 
    RetVal = 0.0;
  else if (x GTE 1.0e10) 
    RetVal = Log(2) + Log(x);
  else
    RetVal = Log(x + Sqr((x - 1.0) * (x + 1.0)));
  Return(RetVal);
}
</cfscript>

<cfscript>
/**
 * Returns the inverse cotangent of a value.
 * 
 * @param x 	 Any real number. 
 * @return Returns an angle in radians. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, November 29, 2001 
 */
function Acot(x){
    return -Atn(x)+1.570796;
}
</cfscript>

<cfscript>
/**
 * Returns the inverse hyperbolic cotangent of a value.
 * 
 * @param x 	 x>1, x<-1 
 * @return Returns a numeric value or string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, November 29, 2001 
 */
function Acoth(x){
  if (x lt -1)
    return Log((x+1)/(x-1))/2;
  else
    if (x gt 1)
      return Log((x+1)/(x-1))/2;
  else
    return "undefined";
}
</cfscript>

<cfscript>
/**
 * Returns the inverse cosecant of an angle.
 * 
 * @param x 	 Angle in radians. 
 * @return Returns a numeric value or string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, November 29, 2001 
 */
function Acsc(x){
  if (x eq 0)
    return "undefined";
  else
    return Atn(1/Sqr(x*x-1))+(Sgn(x)-1)*1.570796;
}
</cfscript>

<cfscript>
/**
 * Returns the inverse hyperbolic cosecant of an angle.
 * 
 * @param x 	 Any angle expressed in radians. 
 * @return Returns a numeric value or string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, October 9, 2001 
 */
function Acsch(x){
  if (x EQ 0)
    return "undefined";
  else 
    return Log((Sgn(x)*Sqr(x*x+1)+1)/x);
}
</cfscript>

<cfscript>
/**
 * Calculates the area of a circle.
 * 
 * @param radius 	 1/2 the diameter of the circle 
 * @return Returns the area of the circle 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, July 17, 2001 
 */
function AreaCircle(radius)
{
  Return (Pi()*(radius^2));
}
</cfscript>

<cfscript>
/**
 * Calculates the area of an ellipse.
 * 
 * @param radius1 	 The vertical radius 
 * @param radius2 	 The horizontal radius 
 * @return Returns the area of the ellipse. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, July 17, 2001 
 */
function AreaEllipse(r1, r2)
{
  Return (pi() * r1 * r2);
}
</cfscript>

<cfscript>
/**
 * Calculates the area of a Parallelogram.
 * 
 * @param base 	 Length of the base 
 * @param height 	 The height 
 * @return Returns the area of the parallelogram. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, July 17, 2001 
 */
function AreaParallelogram(base, height)
{
  Return (base * height);
}
</cfscript>

<cfscript>
/**
 * Calculates the area of a rectangle.
 * 
 * @param length 	 Length of one side 
 * @param width 	 Width of an adjacent side 
 * @return Returns the area of the rectangle. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 17, 2001 
 */
function AreaRectangle(length,width)
{
  Return (length*width);
}
</cfscript>

<cfscript>
/**
 * Calculates the area of a rhombus.
 * 
 * @param diag1 	 Length of one diagonal 
 * @param diag2 	 Length of the other diagonal 
 * @return Returns the area of the rhombus. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 17, 2001 
 */
function AreaRhombus(diag1, diag2)
{
  Return (0.5 * (diag1 + diag2));
}
</cfscript>

<cfscript>
/**
 * Calculates the area of a square.
 * 
 * @param side 	 The length of one side of the square. 
 * @return Returns the area of the square. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 17, 2001 
 */
function AreaSquare(side)
{
  Return (side^2);
}
</cfscript>

<cfscript>
/**
 * Calculates the area of a trapezoid.
 * 
 * @param base1 	 Length of the bottom base. 
 * @param base2 	 Length of the top base. 
 * @param height 	 Height of the trapezoid. 
 * @return Returns the area of the trapezoid. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 17, 2001 
 */
function AreaTrapezoid(base1, base2, height)
{
  Return (base1 + base2)/2 * height;
}
</cfscript>

<cfscript>
/**
 * Calculates the area of a triangle.
 * 
 * @param base 	 Length of the base. 
 * @param height 	 The height of the triangle. 
 * @return Returns the area of the triangle. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 17, 2001 
 */
function AreaTriangle(base, height)
{
  Return (0.5 * base * height);
}
</cfscript>

<cfscript>
/**
 * Returns the inverse secant of an angle.
 * 
 * @param x 	 Angle in radians. 
 * @return Returns a numeric value or string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, November 29, 2001 
 */
function Asec(x){
  if (x eq 0)
    return "undefined";
  else
    return Atn(Sqr(x*x-1))+(Sgn(x)-1)*1.570796;
}
</cfscript>

<cfscript>
/**
 * Returns the inverse hyperbolic secant of a value.
 * 
 * @param x 	 0 < x <= 1 
 * @return Returns a numeric value or string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, October 16, 2001 
 */
function Asech(x){
  if (x lte 0)
    return "undefined";
  else 
    if (x gt 1)
      return "undefined";
  else
    return Log((Sqr(-x*x+1)+1)/x);
}
</cfscript>

<cfscript>
/**
 * Returns the inverse hyberbolic sine of a value.
 * 
 * @param x 	 Any real number. 
 * @return Returns an angle in radians. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, November 29, 2001 
 */
function Asinh(x)
{
  Var RetVal = 0;
  Var Neg = False;
  if (x EQ 0) {
    RetVal = 0;
  }
  else {
    if (X LT 0) 
	  	Neg = True;
    x = Abs(x);
    if (x GT 1.0e10)
      RetVal = Log(2) + Log(X);
    else {
      RetVal = x^2;
      RetVal = Log(x + RetVal / (1 + Sqr(1 + RetVal)) + 1);
    }
    if (Neg) 
		RetVal = -RetVal;
  }
  Return(RetVal);
}
</cfscript>

<cfscript>
/**
 * Calculates the arc tangent of the two variables, x and y.
 * 
 * @param x 	 First value. (Required)
 * @param y 	 Second value. (Required)
 * @return Returns a number. 
 * @author Rick Root (rick.root@webworksllc.com) 
 * @version 1, September 14, 2005 
 */
function atan2(firstArg, secondArg) {    
	var Math = createObject("java","java.lang.Math");    
	return Math.atan2(javacast("double",firstArg), javacast("double",secondArg)); 
}
</cfscript>

<cfscript>
/**
 * Returns the inverse hyberbolic tangent of a value.
 * 
 * @param x 	 Real number < 1.0 
 * @return Returns an angle in radians. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, November 29, 2001 
 */
function Atanh(x)
{
  Var RetVal = 0;
  Var Neg = False;
  if (x LTE 1.0) 
    RetVal = 0.0;
  else
    if (x LT 0) 
	  	Neg = True;
    x = Abs(x);
    if (X GTE 1)
      RetVal = "overflow";
    else
      RetVal = 0.5 * Log(((2.0 * x) / (1.0 - x)) + 1);
    if (Neg) 
		RetVal = -RetVal;
  Return(RetVal);
}
</cfscript>

<cfscript>
/**
 * Calculates the average of a set of numbers omitting values less than 1 from that average.
 * 
 * @param data 	 The array to average. (Required)
 * @return Returns a number. 
 * @author David Simms (dsimms@dcbar.org) 
 * @version 1, January 12, 2004 
 */
function averageWithoutZeros(data) {
	var counter = arrayLen(data);
	
	//remove zeros
	for(;counter gte 1;counter=counter-1) {
		if(data[counter] lt 1) arrayDeleteAt(data,counter);
	} 

	if(arrayLen(data)) return arrayAvg(data);
	else return 0;
}
</cfscript>

<cfscript>
/**
 * Converts a number from one arbitrary base to another arbitrary base.
 * v1.0 by Adam Cameron
 * 
 * @param number 	 The number to convert. (Required)
 * @param fromBase 	 The base to convert from.  Can either be one of BIN, DEC, HEX, BASE36, BASE62 or an 'alphabet' or characters that represent the digits. EG: OCTAL would be 01234567. (Required)
 * @param toBase 	 The base to convert to. Has same value rules as fromBase. (Required)
 * @return Returns a string, which is the original number converted to the specified base 
 * @author Adam Cameron (adamcameroncoldfusion@gmail.com) 
 * @version 1, September 24, 2012 
 */
string function baseMToBaseN(required string number, required string fromBase, required string toBase){
	if (fromBase == toBase){	// ie: there's nothing to do
		return number;
	}
	
	// I use BigIntegers in this because CF loses precision or overflows pretty quickly
	var getDigitsForBase = function(base){// abstracting this out because it's verbose and I need to do it twice 
		var result = {};
		switch (base){
			case "BIN":		result.digits="01"; break;
			case "DEC":		result.digits="0123456789"; break;
			case "HEX":		result.digits="0123456789ABCDEF"; break;
			case "BASE36":	result.digits="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"; break;
			case "BASE62":	result.digits="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"; break;
			default:		result.digits=base; break;
		}
		result.base = createObject("java", "java.math.BigInteger").init(javaCast("String", len(result.digits)));
		return result;
	};

	var from			= getDigitsForBase(fromBase); 
	var to				= getDigitsForBase(toBase); 
	var srcDigits		= reverse(number);
	var digit			= "";
	var baseMultiplier	= createObject("java", "java.math.BigInteger").init("1");	// NB: BigInteger inits with a string, hence the quotes
	var digitMultiplied	= 0;
	var digitValue		= 0;
	var decValue		= createObject("java", "java.math.BigInteger").init("0");
	var result			= "";
	
	// the first step is converting the number to decimal. If it's already a decimal, we can skip this bit
	if (fromBase == "DEC"){
		decValue		= createObject("java", "java.math.BigInteger").init(javaCast("String", number));
	}else{
		while (len(srcDigits) > 0){	// the algorithm is basically go through each digit, and multiple it by increasing powers of the base we're converting to
			// get the next char and its value
			digit			= left(srcDigits, 1);
			digitValue		= createObject("java", "java.math.BigInteger").init(javaCast("String", find(digit, from.digits) - 1));

			// add it to the total
			digitMultiplied = baseMultiplier.multiply(digitValue);
			decValue		= decValue.add(digitMultiplied);

			// get ready for next iteration
			srcDigits		= removeChars(srcDigits, 1, 1);
			baseMultiplier = baseMultiplier.multiply(from.base);
		}
	}

	// convert from a decimal into the specified base: progressively note the remainder as we divide the number by the base
	while (decValue >= to.base){
		digitValue	= decValue.mod(to.base);
		digit		= mid(to.digits, digitValue+1, 1);
		result		= digit & result;
		decValue	= decValue.divide(to.base);
	}
	
	// and do the last digit, which is all that is left after the loop
	digit	= mid(to.digits, decValue+1, 1);
	result	= digit & result;
	
	return result;
}
</cfscript>

<cfscript>
/**
 * Converts binary data to hexadecimal format.
 * 
 * @param bin 	 Binary data. (Required)
 * @return Returns a string. If an error occurs, returns 
 * @author Axel Glorieux (axel@misterbuzz.com) 
 * @version 1, June 28, 2002 
 */
function Bin2Hex (bin){
 var str64 = tobase64(bin);
 var result = "";
 var a = 0;
 var b = 0;
 var c = "";
 var x = "";
 var i = 1;
 if (isbinary(bin)) {
  for (i;i LTE len(str64);i=i+1){
   c = asc(mid(str64,i,1));
   if (c LT 47)x = 62;
   else if (c LT 48)x = 63;
   else if (c EQ 61)x = 0;
   else if (c LT 65)x = c+4;
   else if (c LT 97)x = c-65;
   else x = c-71;
   if (i mod 2){
    a = bitshln(x,6);
   }
   else {
    b = x;
    for (j=len(formatbasen(a+b,16));j LT 3;j=j+1){
     result = result & 0;
    }
    result = result & formatbasen(a+b,16);
    a = 0;
    b = 0;
    }
   }
   if (right(str64,2) IS "=="){
    result = left(result,len(result)-4);
   }
   else if (right(str64,1) IS "="){
    result = left(result,len(result)-2);
   }
  return result;
 }
 else {
  result = "Invalid binary data";
 }
}
</cfscript>

<cfscript>
/**
 * Converts from binary (base2) to decimal (base10).
 * 
 * @param str 	 String (binary number)  to convert to decimal. 
 * @return Returns a number. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, November 6, 2001 
 */
function BinToDec(str){
  return InputBaseN(str, 2);
}
</cfscript>

<!---
 Calculate direct distance and angle between two decimal coordinates.
 v2 update by Mike G.
 
 @param startNorth 	 Start point Latitude (Required)
 @param startEast 	 Start point Longitude (Required)
 @param endNorth 	 End point Latitude (Required)
 @param endEast 	 End point Longitude (Required)
 @param returnAsMiles 	 Boolean value that forces the return to be miles. (Optional)
 @return Returns a struct. 
 @author Sigi Heckl (siegfried.heckl@siemens.com) 
 @version 2, July 28, 2011 
--->
<cffunction name="calcDistance" access="private" output="false"
returntype="struct" hint="calculate distance between coordinates">
 <cfargument name="startLat" required="true" type="string"
hint="Start point Latitude (Dezimalschreibweise!)" />
 <cfargument name="startLon"  required="true" type="string"
hint="Start point Longitude (Dezimalschreibweise!)" />
 <cfargument name="endLat"   required="true" type="string" hint="End
point Latitude (Dezimalschreibweise!)" />
 <cfargument name="endLon"    required="true" type="string" hint="End
point Longitude (Dezimalschreibweise!)" />
 <cfargument name="returnAsMiles" required="no" type="boolean"
hint="True returns as US Miles, otherwise return is in kilometers">

 <cfset var strResult = { distance='0', angle='0', revAngle='0' } />
 <cfset var RADIUS    = 6371 />
 <cfset var rs     = structNew() />

 <cfset rs.a     = (90-arguments.startLat) * Pi() / 180 />
 <cfset rs.b     = (90-arguments.endLat)   * Pi() / 180 />
 <cfset rs.gamma = abs(arguments.endLon-arguments.startLon) * Pi() / 180 />
 <cfset rs.c     = aCos(cos(rs.a) * cos(rs.b) + sin(rs.a) * sin(rs.b)
* cos(rs.gamma)) />
 <cfset rs.s     = (rs.a + rs.b + rs.c) / 2 />
 <cfif arguments.startLon EQ arguments.endLon>
     <cfif arguments.startLat LT arguments.endLat>
         <cfset rs.alpha = Pi() />
         <cfset rs.beta  = 0 />
       <cfelse>
         <cfset rs.alpha = Pi() />
         <cfset rs.beta  = Pi() />
     </cfif>
   <cfelse>
     <cfset rs.alpha = aCos((cos(rs.a) - cos(rs.b)*cos(rs.c)) /
(sin(rs.c)*sin(rs.b))) />
     <cfset rs.beta  = aCos((cos(rs.b) - cos(rs.c)*cos(rs.a)) /
(sin(rs.c)*sin(rs.a))) />
 </cfif>

 <cfset rs.e  = rs.alpha + rs.beta + rs.gamma - Pi() />
 <cfset rs.A  = RADIUS * RADIUS * rs.e />
 <cfset rs.ss = (rs.alpha + rs.beta + rs.gamma) / 2 />
 <cfset rs.ka = rs.a * RADIUS />
 <cfset rs.kb = rs.b * RADIUS />
 <cfset rs.kc = rs.c * RADIUS />
 <cfif rs.beta NEQ 0>
     <cfset rs.bearing = 360 - (rs.beta * 180 / Pi()) />
   <cfelse>
     <cfset rs.bearing = 0 />
 </cfif>
 <cfset rs.revbearing = (rs.alpha * 180 / Pi()) />

 <cfif (arguments.endLon-arguments.startLon GT 0) OR
       ((arguments.endLon EQ arguments.startLon) AND
(arguments.endLat LT arguments.startLat))>
   <cfset rs.bearing    = 360 - rs.bearing />
   <cfset rs.revbearing = 360 - rs.revbearing />
 </cfif>

 <cfset rs.kc         = round(1000* rs.kc)/1000 />
 <cfset rs.bearing    = round(100 * rs.bearing) / 100 />
 <cfset rs.revbearing = round(100 * rs.revbearing) / 100 />

 <cfset strResult.distance  = rs.kc / >
 <cfif structkeyexists(arguments,"returnAsMiles") and arguments.returnAsMiles>
       <cfset strResult.distance  = rs.kc*0.621371192 / >
 </cfif>
 <cfset strResult.angle     = rs.bearing / >
 <cfset strResult.revAngle  = rs.revbearing / >

 <cfreturn strResult>
</cffunction>

<cfscript>
/**
 * Calculates the area of an irregular N sided Polygon.
 * 
 * @param data 	 Array of structs (Required)
 * @return Returns a number. 
 * @author Tim Dudek (tim@igl.net) 
 * @version 1, January 26, 2004 
 */
function CalcPolygonArea(data) {
	var area = "0";
	var i = 1;

	// Check for valid Stucture with at least 3 records
	if(not isArray(data) or arrayLen(data) lte 2) return 0;
	
	data[arrayLen(data)+1] = structNew();
	data[arrayLen(data)].x = data[1].x;
	data[arrayLen(data)].y = data[1].y;
	

	// Loop through the structure performing the area calculation.
	// Formula = Area = 1/2 * ((x1+x2)(y1-y2)+(x2+x3)(y2-y3)+...+(xn+x1)(yn-y1))
	for(; i LT arrayLen(data) ; i=i+1) {
		area = area + ( data[i+1].x-data[i].x) * (data[i+1].y + data[i].y) / 2;
	}
	
	// Only return positive values.
	return abs(area);
}
</cfscript>

<cfscript>
/**
 * Calculates the circumference of a circle
 * 
 * @param radius 	 1/2 the diameter of the circle. 
 * @return Returns a simple value 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 17, 2001 
 */
function CircumferenceCircle(radius)
{
  Return (2*PI()*radius);
}
</cfscript>

<cfscript>
/**
 * Cumulative Normal Distribution
 * 
 * @param x 	 value for which you want to compute the cumulative normal distribution (Required)
 * @return Returns a numeric value. 
 * @author Alex (axs@arbornet.org) 
 * @version 1, March 10, 2003 
 */
function CND (x) {
    // The cumulative normal distribution function
    var Pi = 3.141592653589793238;
    var a1 = 0.31938153;
    var a2 = -0.356563782;
    var a3 = 1.781477937;
    var a4 = -1.821255978;
    var a5 = 1.330274429;
    var L = abs(x);
    var k = 1 / ( 1 + 0.2316419 * L);
    var p = 1 - 1 /  ((2 * Pi)^0.5) * exp( -(L^2) / 2 ) * (a1 * k + a2 * (k^2) + a3 * (k^3) + a4 * (k^4) + a5 * (k^5) );

    if (x gte 0)
        return p;
    else
        return 1-p;

}
</cfscript>

<cfscript>
/**
 * Calculates the distance between two sets of coordinates.
 * 
 * @param x1 	 x position of the first point 
 * @param y1 	 y position of the first point 
 * @param x2 	 x position of the second point 
 * @param y2 	 y position of the second point 
 * @return Returns a simple value 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 17, 2001 
 */
function CoDistance(x1,y1,x2,y2)
{
  Return SQR(((x1-x2)*(x1-x2))+((y1-y2)*(y1-y2)));
}
</cfscript>

<cfscript>
/**
 * Returns the Combination of n elements taken p at a time.
 * This funciton requires the Permutation() and Factorial() functions from this library.
 * 
 * @param n 	 Any non-negative integer 
 * @param p 	 any non-negative integer, <= n 
 * @return Returns a simple value 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, July 18, 2001 
 */
function Combination(n,p)
{
  var RetVal = 0;
  if (p GT n) {
   RetVal = "undefined";
  }
  else
   RetVal = Permutation(n,p) / Factorial(p);  
  Return RetVal;
}
</cfscript>

<cfscript>
/**
 * Returns the coordinates of the midpoint between two points on a line.
 * 
 * @param x1 	 x position of the first point 
 * @param y1 	 y position of the first point 
 * @param x2 	 x position of the second point 
 * @param y2 	 y position of the second point 
 * @return Returns a string 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 17, 2001 
 */
function CoMidpoint(x1,y1,x2,y2)
{
  Return (x1+x2)/2 & ',' & (y1+y2)/2;
}
</cfscript>

<cfscript>
/**
 * Create a complex number as a structure.
 * 
 * @param Real 	 Real part of the complex number. 
 * @param Imaginary 	 Imaginary part of the complex number. 
 * @return Returns a structure representing a complex number with the keys R and I. 
 * @author Matthew Walker (matthew@electricsheep.co.nz) 
 * @version 1, November 15, 2001 
 */
function ComplexNum(Real,Imaginary) {
  var ComplexNumber = StructNew();
  ComplexNumber.R=Real;
  ComplexNumber.I=Imaginary;
  return ComplexNumber;
}
</cfscript>

<cfscript>
/**
 * Absolute value |z| of a complex number.
 * Note that this function uses complex numbers stored as structures by the ComplexNum() UDF also available in this library.
 * 
 * @param ComplexNumber 	 Structure containing the complex number you want the absolute value for. 
 * @return Returns a numeric value. 
 * @author Matthew Walker (matthew@electricsheep.co.nz) 
 * @version 1, November 15, 2001 
 */
function ComplexNumAbs(ComplexNumber){
  return Sqr(ComplexNumber.R^2 + ComplexNumber.I^2);
}
</cfscript>

<cfscript>
/**
 * Adds two complex numbers.
 * Note that this function uses complex numbers stored as structures by the ComplexNum() UDF also available in this library.  The ComplexNum() function is also required for this UDF to function.
 * 
 * @param First 	 Structure containing a complex number or a real number. 
 * @param Second 	 Structure containing a complex number or a real number. 
 * @return Returns a structure. 
 * @author Matthew Walker (matthew@electricsheep.co.nz) 
 * @version 1, November 15, 2001 
 */
function ComplexNumAdd(First,Second) {
	var ComplexSum = StructNew();
	var ComplexFirst = 0;
	var ComplexSecond = 0;
	var R = 0;
	var I = 0;
			
	if ( IsStruct(First) )
		ComplexFirst = First;
	else	
		ComplexFirst = ComplexNum(First,0);	
	if ( IsStruct(Second) )
		ComplexSecond = Second;
	else	
		ComplexSecond = ComplexNum(Second,0);
				
	R = ComplexFirst.R + ComplexSecond.R;
	I = ComplexFirst.I + ComplexSecond.I;
	StructInsert(ComplexSum, "R", R);
	StructInsert(ComplexSum, "I", I);
	return ComplexSum;
}
</cfscript>

<cfscript>
/**
 * Multiply two complex numbers.
 * Note that this function uses complex numbers stored as structures by the ComplexNum() UDF also available in this library.  The ComplexNum() function is also required for this UDF to function.
 * 
 * @param Multiplicand 	 Structure containing a complex number or a real number. 
 * @param Multiplier 	 Structure containing a complex number or a real number. 
 * @return Returns a structure. 
 * @author Matthew Walker (matthew@electricsheep.co.nz) 
 * @version 1, November 15, 2001 
 */
function ComplexNumMultiply(Multiplicand,Multiplier) {
	var ComplexProduct = StructNew();
	var ComplexMultiplicand = 0;
	var ComplexMultiplier = 0;
	var R = 0;
	var I = 0;
			
	if ( IsStruct(Multiplicand) )
		ComplexMultiplicand = Multiplicand;
	else	
		ComplexMultiplicand = ComplexNum(Multiplicand,0);	
	if ( IsStruct(Multiplier) )
		ComplexMultiplier = Multiplier;
	else	
		ComplexMultiplier = ComplexNum(Multiplier,0);
				
	R = ComplexMultiplicand.R * ComplexMultiplier.R - ComplexMultiplicand.I * ComplexMultiplier.I;
	I = ComplexMultiplicand.R * ComplexMultiplier.I + ComplexMultiplicand.I * ComplexMultiplier.R;
	StructInsert(ComplexProduct, "R", R);
	StructInsert(ComplexProduct, "I", I);
	return ComplexProduct;
}
</cfscript>

<cfscript>
/**
 * Convert a stored complex number to a string in the form a + bi.
 * Note that this function uses complex numbers stored as structures by the ComplexNum() UDF also available in this library.
 * 
 * @param ComplexNumber 	 Structure containing complex number you want converted to a string. 
 * @return Returns a string 
 * @author Matthew Walker (matthew@electricsheep.co.nz) 
 * @version 1, November 15, 2001 
 */
function ComplexNumToString(ComplexNumber) {
  if ( ComplexNumber.I LT 0 )
    return "#ComplexNumber.R# - #Abs(ComplexNumber.I)#i";
  else		
    return "#ComplexNumber.R# + #ComplexNumber.I#i";
}
</cfscript>

<cfscript>
/**
 * Converts any numeric string (even ones with currancy symbols to a number).
 * 
 * @param strVal 	 Value to convert. (Required)
 * @return Returns a number. 
 * @author Glenn Wilson (glenn.wilson@quotegen.com) 
 * @version 1, November 15, 2002 
 */
function Convert2Number(StrVal){
  var regStr = "[^/.0123456789-]";
  return Val(REReplace(StrVal,regStr,"","all"));
}
</cfscript>

<cfscript>
/**
 * Convert bewteen standard and metric lengths.
 * 
 * @param numberValue 	 Value to be converted. 
 * @param convertFrom 	 Type of unit to convert from. 
 * @param convertTo 	 Type of unit to convert to. 
 * @return Returns a numeric value. 
 * @author Seth Duffey (sduffey@ci.davis.ca.us) 
 * @version 1, April 23, 2002 
 */
function ConvertLength(NumberValue,ConvertFrom,ConvertTo) {
    var ValuesArray = ArrayNew(1);
    var LookupArray = ArrayNew(2);
    var i = 1;
    var ii = 1;
    var GetMultiplier = 1;
    
    /* Set Convertions Values */
	ValuesArray[1] = "Inch,Foot,Yard,Mile,Millimeter,Centimeter,Meter,Kilometer";
	ValuesArray[2] = "1,12,36,63360,1/25.4,1/2.54,1/0.0254,1/0.0000254";
	ValuesArray[3] = "1/12,1,3,5280,1/304.8,1/30.48,1/0.3048,1/0.0003048";
	ValuesArray[4] = "1/36,1/3,1,1760,1/914.4,1/91.44,1/0.9144,1/0.0009144";
	ValuesArray[5] = "1/63360,1/5280,1/1760,1,1/1609334,1/160934.4,1/1609.344,1/1.609344";
	ValuesArray[6] = "25.4,304.8,914.4,1609334,1,10,1000,1000000";
	ValuesArray[7] = "2.54,30.48,91.44,160934.4,1/10,1,100,100000";
	ValuesArray[8] = "0.0254,0.3048,0.9144,1609.344,1/1000,1/100,1,1000";
	ValuesArray[9] = "0.0000254,0.0003048,0.0009144,1.609344,1/1000000,1/100000,1/1000,1";
    
    /* Populate Lookup Array */
	for (i=1; i LTE ArrayLen(ValuesArray); i=i+1)
	{
		for (ii=1; ii LTE ListLen(ValuesArray[i],","); ii=ii+1)
		LookupArray[i][ii]= ListGetAt(ValuesArray[i],ii,",");
	}
/* Find Multiplier and Calculate Result */
	ConvertFrom = ListFindNoCase(ValuesArray[1],ConvertFrom,",");
	ConvertTo = ListFindNoCase(ValuesArray[1],ConvertTo,",");
	GetMultiplier = LookupArray[ConvertFrom+1][ConvertTo];
	return NumberValue/evaluate(GetMultiplier);
}
</cfscript>

<cfscript>
/**
 * Returns the hyberbolic cosine of an angle.
 * 
 * @param x 	 Angle measured in radians. 
 * @return Returns a numeric value. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, October 9, 2001 
 */
function Cosh(x)
{
	Return((Exp(x) + Exp(-x)) / 2);
}
</cfscript>

<cfscript>
/**
 * Returns the Cotangent of an angle.
 * 
 * @param x 	 Any angle in radians. 
 * @return Returns a numeric value or string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, October 9, 2001 
 */
function Cot(x){
  if (x EQ 0)
    return "undefined";
  else 
    return 1/Tan(x);
}
</cfscript>

<cfscript>
/**
 * Returns the hyperbolic cotangent of an angle.
 * 
 * @param x 	 Any angle in radians. 
 * @return Returns a numeric value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, October 9, 2001 
 */
function Coth(x){
    return Exp(-x)/(Exp(x)-Exp(-x))*2+1;
}
</cfscript>

<cfscript>
/**
 * Returns the cosecant of an angle.
 * 
 * @param angle 	 Any angle measured in radians. 
 * @return Returns a numeric value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, October 9, 2001 
 */
function Csc(x){
  if (x EQ 0)
    return "undefined";
  else 
    return 1/sin(x);
}
</cfscript>

<cfscript>
/**
 * Returns the hyperbolic cosecant of an angle.
 * 
 * @param x 	 Any angle expressed in radians. 
 * @return Returns a numeric value or string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, October 9, 2001 
 */
function Csch(x){
  if (x EQ 0)
    return "undefined";
  else 
    return 2/(Exp(x)-Exp(-x));
}
</cfscript>

<cfscript>
/**
 * Returns the coefficient of variation for a set of values (entire population).
 * Requires the StdDevPop() and Mean() functions from this library.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a simple value 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, July 18, 2001 
 */
function CVpop(values)
{
  Return ((StdDevPop(values)/Mean(values))*100);
}
</cfscript>

<cfscript>
/**
 * Returns the coefficient of variation for a set of values (populaiton sample).
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function CVsamp(values)
{
  Return ((StdDevSamp(values)/Mean(values))*100);
}
</cfscript>

<cfscript>
/**
 * Converts a decimal Lat/Long coordinate into sexagesimal (degrees, minutes, seconds).
 * 
 * @param pCoordinate 	 Decimal coordinate. 
 * @param pCoordinatePart 	 Coordinate part requested. Can be: degree(s),minute(s),second(s) 
 * @return Returns a string. 
 * @author Christopher Tackett (cflib@tackettproxy.com) 
 * @version 1, April 23, 2002 
 */
Function Decimal2Sexagesimal(pCoordinate) {
	var pCoordinatePart = "";
	var myDegrees = "";
	var myMinutes = "";
	var mySeconds = "";
	var retval = "";
	
	myDegrees = Int(pCoordinate);
	myMinutes = (pCoordinate - Int(pCoordinate)) * 60;
	mySeconds = (myMinutes - Int(myMinutes)) * 60;
	
	mySeconds = Round(mySeconds * 10000) / 10000;
	
	if (mySeconds eq 60) {
		myMinutes = myMinutes + 1;
		if (myMinutes eq 60) {
			myDegrees = myDegrees + 1;
			myMinutes = 0;
		}
		mySeconds = 0;
	}
	
	retval = myDegrees & chr(176) & " " & Int(myMinutes) & "' " & mySeconds & chr(34);
	
	if (ArrayLen(Arguments) gt 1) {
	
		pCoordinatePart = Arguments[2];
		
		if (pCoordinatePart eq "degree" or pCoordinatePart eq "degrees" or pCoordinatePart eq 1)
			retval = myDegrees;
		else if (pCoordinatePart eq "minute" or pCoordinatePart eq "minutes" or pCoordinatePart eq 2)
			retval = Int(myMinutes);
		else if (pCoordinatePart eq "second" or pCoordinatePart eq "seconds" or pCoordinatePart eq 3)
			retval = mySeconds;
			
	}
	
	return retval;

}
</cfscript>

<cfscript>
/**
 * Rounds a number to a specific number of decimal places by using Java's math library.
 * 
 * @param numberToRound 	 The number to round. (Required)
 * @param numberOfPlaces 	 The number of decimal places. (Required)
 * @param mode 	 The rounding mode. Defaults to even. (Optional)
 * @return Returns a number. 
 * @author Peter J. Farrell (pjf@maestropublishing.com) 
 * @version 1, March 3, 2006 
 */
function decimalRound(numberToRound, numberOfPlaces) {
	// Thanks to the blog of Christian Cantrell for this one
	var bd = CreateObject("java", "java.math.BigDecimal");
	var mode = "even";
	var result = "";
	
	if (ArrayLen(arguments) GTE 3) {
		mode = arguments[3];
	}

	bd.init(arguments.numberToRound);
	if (mode IS "up") {
		bd = bd.setScale(arguments.numberOfPlaces, bd.ROUND_HALF_UP);
	} else if (mode IS "down") {
		bd = bd.setScale(arguments.numberOfPlaces, bd.ROUND_HALF_DOWN);
	} else {
		bd = bd.setScale(arguments.numberOfPlaces, bd.ROUND_HALF_EVEN);
	}
	result = bd.toString();
	
	if(result EQ 0) result = 0;

	return result;
}
</cfscript>

<cfscript>
/**
 * Converts from decimal (base10) to binary (base2).
 * 
 * @param str 	 Decimal number to convert to binary. 
 * @return Returns a string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, November 6, 2001 
 */
function DecToBin(str){
  return FormatBaseN(str, 2);
}
</cfscript>

<cfscript>
/**
 * Converts from decimal(base10) to hexadecimal (base16).
 * 
 * @param str 	 Decimal number to convert to hexadecimal. 
 * @return Returns a string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, November 6, 2001 
 */
function DecToHex(str){
  return Ucase(FormatBaseN(str, 16));
}
</cfscript>

<cfscript>
/**
 * Converts from decimal (base10) to octal (base8).
 * 
 * @param str 	 Decimal number to convert to octal.. 
 * @return Returns a string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, November 6, 2001 
 */
function DecToOct(str){
  return FormatBaseN(str, 8);
}
</cfscript>

<cfscript>
/**
 * Converts degrees to radians.
 * 
 * @param degrees 	 Angle (in degrees) you want converted to radians. 
 * @return Returns a simple value 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function DegToRad(degrees)
{
  Return (degrees*(Pi()/180));
}
</cfscript>

<cfscript>
/**
 * Calculates the Grade of Service (failure rate) based on Busy Hour Traffic (Erlangs) and number of indepenedent lines
 * 
 * @param Erl 	 Busy Hour Traffic (BHT) or the number of hours of call traffic during the busiest hour of operation. (Required)
 * @param n 	 Number of independent lines available for traffic. Positive integer. (Required)
 * @return Returns a number. 
 * @author Alex Belfor (abelfor@yahoo.com) 
 * @version 1, February 14, 2004 
 */
function ErlangB(erl,n) {
	var s=1;
	var i=1;
	for (i=1; i LTE n; i=i+1) s=s*i/erl+1;
	return (1/s);
}
</cfscript>

<cfscript>
/**
 * Returns a list of all factors for a given positive integer.
 * 
 * @param integer 	 Any non negitive integer greater than or equal to 1. 
 * @return Returns a comma delimited list of values. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.1, September 6, 2001 
 */
function factor(integer)
{
  Var i=0; 
  Var Factors = "";
  for (i=1; i LTE integer/2; i=i+1) {
    if (Int(integer/i) EQ integer/i) {
      Factors = ListAppend(Factors, i);
    }
  }
  Return ListAppend(Factors, integer);
}
</cfscript>

<cfscript>
/**
 * Returns the factorial (n!) for a given positive integer.
 * Note that a recursive function call is NOT used here for performance reasons.
 * 
 * @param integer 	 Any non negitive integer. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function Factorial(integer)
{
  Var factorial=1;
  Var i=integer;  
  while (i GT 0) {
    factorial = factorial*i;
    i = i-1;
    }
  Return factorial;
}
</cfscript>

<cfscript>
/**
 * This script Calculates the Fibonacci sequence  (each integer is the sum of the two previous integers).
 * 
 * @param x 	 First number in the Fibonacci sequence. (Required)
 * @param y 	 Second number in the Fibonacci sequence. (Required)
 * @param top 	 Ceiling for the Fibonacci number.  The sequence will terminate when this value is reached. (Required)
 * @return Returns a comma-delimited list of numeric values. 
 * @author Phillip B. Holmes (pholmes@mediares.com) 
 * @version 1, June 26, 2002 
 */
function FibCalc(x,y,top){
  var sequence = arrayNew(1);
  var total = x+y;
  sequence[1] = x;
  sequence[2] = y;
  while (total LTE top) {
    ArrayAppend(sequence, total);
    x=y; 
    y=total;
    total=(x+y); 
  }
  return ArrayToList(sequence, ',');
}
</cfscript>

<cfscript>
/**
 * Returns the Fibonacci sequence to n places given a starting point of x and y.
 * 
 * @param x 	 First number in the sequence. (Required)
 * @param y 	 Second number in the sequence. (Required)
 * @param numSeq 	 Number of elements to generate for the sequence. (Required)
 * @return Returns a comma-delimited list of numbers. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, June 26, 2002 
 */
function FibGen(x,y,numSeq){
  var sequence = arrayNew(1);
  var total = x+y;
  var i=1;
  sequence[1] = x;
  sequence[2] = y;
  while (i LTE numSeq-2) {
    total=(x+y); 
    ArrayAppend(sequence, total);
    x=y; 
    y=total;
    i=i+1;
  }
  return ArrayToList(sequence, ',');
}
</cfscript>

<!---
 Converts a java float to a 32-bit hexadecimal representation
 
 @param floatValue 	 Numeric value. (Required)
 @param usePadding 	 Boolean to determine if padding is used on the result. Defaults to true. (Optional)
 @return Returns a string. 
 @author Leigh (cfsearching@yahoo.com) 
 @version 0, June 22, 2010 
--->
<cffunction name="floatToHex" returntype="string" access="public" output="false"
        hint="Converts a java float value to a 32-bit hexadecimal representation (IEEE 754 floating-point number)">
    <cfargument name="floatValue" type="numeric" required="true" />
    <cfargument name="usePadding" type="boolean" default="true" />

    <cfset var floatRef = javacast("float", 0) />
    <cfset var intValue = floatRef.floatToIntBits( javacast("float", arguments.floatValue) ) />
    <cfset var result   = formatBaseN(intValue, 16) />

    <!--- pad hex value with leading zeroes --->
    <cfif arguments.usePadding>
        <cfset result =  right("00000000"& result, 8) />
    </cfif>
    
    <cfreturn result />
</cffunction>

<cfscript>
/**
 * Performs a number of statistical functions on a set of points.
 * 
 * @param xlist 	 List of x values. (Required)
 * @param ylist 	 List of y values. (Required)
 * @param xnew 	 Determines the y value to forecast. (Required)
 * @return Returns a struct. 
 * @author James Stevenson (james.m.stevenson@gmail.com) 
 * @version 1, November 3, 2005 
 */
function forecast(xlist, ylist, Xnew) {
	var X = ListToArray(xlist);
	var Y = ListToArray(ylist);
	var i = 0;
	var n = arrayLen(X);
	var minX = 0;
	var maxX = 0;
	var minY = 0;
	var maxY = 0;
	var sumX = 0;
	var sumY = 0;
	var sumXsquared = 0;
	var sumYsquared = 0;
	var sumXY = 0;
	var Sxx = 0;
	var Syy = 0;
	var Sxy = 0;
	var b = 0;
	var a = 0;
	var SSR = 0;
	var SSE = 0;
	var residual = ArrayNew(2);
	var maxAbsoluteResidual = 0.0;
	var Ynew = 0;
	var regressionVars = ArrayNew(2);
	//test args
	if (arrayLen(X) NEQ arrayLen(Y)) 
	{
		regressionVars[1][1] = "x and y lists do not have the same number of values";
		regressionVars[2][1] = "error.";
	}
	else if (arrayLen(X) LT 3 AND arrayLen(Y) LT 3) 
	{
		
		regressionVars[1][1] = "you need at least three data points";
		regressionVars[2][1] = "error.";
	}
	else 
	{ 
		for (i=1; i LT n+1; i=i+1) 
		{	
			//Find sum of squares for x,y and sum of xy
			minX = min(minX,X[i]);
			maxX = max(maxX,X[i]);
			minY = min(minY,Y[i]);
			maxY = max(maxY,Y[i]);
			sumX = sumX + X[i];		
			sumY = sumY + Y[i];		
			sumXsquared = sumXsquared + (X[i]*X[i]);	
			sumYsquared = sumYsquared + (Y[i]*Y[i]);
			sumXY = sumXY+ (X[i]*Y[i]);
		}
		//Caculate regression coefficients
		Sxx = sumXsquared-sumX*sumX/n;
		Syy = sumYsquared-sumY*sumY/n;
		Sxy = sumXY-sumX*sumY/n;
		b =Sxy/Sxx;
		a = (sumY-b*sumX)/n;
		SSR = Sxy*Sxy/Sxx;
		SSE = Syy -SSR;
		//Calculate residuals
		for (i=1; i LT n+1; i=i+1 ) 
		{           
			residual[i][1] = x[i];
	        residual[i][2] = y[i]-(a+b*x[i]);
	        maxAbsoluteResidual = Max(maxAbsoluteResidual, Abs(y[i]-(a+b*x[i])));
	    }
		//plug Ynew valuye into standard slope-intercept form (y=mx+b) to find new data point's coordinates
		Ynew = b*Xnew+a; 
		//place all values in a 2-d array: regressionVars. Dimension 1 holds the values themselves, dimension 2 contains a descriptive label for each value
		regressionVars[1][1] = Ynew;
		regressionVars[1][2] = a;
		regressionVars[1][3] = b;
		regressionVars[1][4] = Sxx;
		regressionVars[1][5] = Syy;
		regressionVars[1][6] = Sxy;
		regressionVars[1][7] = SSR;
		regressionVars[1][8] = SSE;
		regressionVars[1][9] = SSE/(n-2);
		regressionVars[1][10] = Sxy/Sqr(Sxx*Syy);
		regressionVars[1][11] = maxAbsoluteResidual;
		regressionVars[1][12] = residual;
		regressionVars[2][1] = "new Y value, given X";
		regressionVars[2][2] = "intercept";
		regressionVars[2][3] = "slope";
		regressionVars[2][4] = "Sxx (Sum of X Products)";
		regressionVars[2][5] = "Syy (Sum of Y products)";
		regressionVars[2][6] = "Sxy (Sum X & Y Products)";
		regressionVars[2][7] = "SSR (Sum of Squared Residuals)";
		regressionVars[2][8] = "SSE (Sum of Squared Errors)";
		regressionVars[2][9] = "MSE (Mean Squared Error)";
		regressionVars[2][10] = "Pearson Residual"; // raw residual (y-m), scaled by the estimated standard deviation of y.
		regressionVars[2][11] = "Max Absolute Residual";
		regressionVars[2][12] = "residuals for given data points"; //this value is a 2-d array
	}
	return regressionVars;
}
</cfscript>

<cfscript>
/**
 * Convert fractions to decimal.
 * 
 * @param fraction 	 Value to convert to decimal. (Required)
 * @return Returns a number. 
 * @author Trevor Orr (fractorr@yahoo.com) 
 * @version 1, August 16, 2008 
 */
function fractionToDecimal(fraction) {
	var thisNumber		= 0;
	var thisFraction	= 0;
	var thisOut 		= "0.0";

	if (ListLen(arguments.fraction, " ") EQ 1) {
		if (Trim(arguments.fraction) contains  "/") {
			thisOut = Val(ListFirst(arguments.fraction, "/")) / Val(ListLast(arguments.fraction, "/"));
		} else {
			thisOut = Val(Trim(arguments.fraction));
		}
	} else {
		if (Trim(ListLast(arguments.fraction, " ")) contains  "/") {
			thisOut = Val(ListFirst(arguments.fraction, " "));
			thisOut = thisOut + Val(ListFirst(ListLast(arguments.fraction, " "), "/")) / Val(ListLast(ListLast(arguments.fraction, " "), "/"));
		} else {
			thisOut = Val(Trim(arguments.fraction));
		}
	}

	return thisOut;
}
</cfscript>

<cfscript>
/**
 * Calculates the GCD (greatest common factor [divisor]) of two positive integers using the Euclidean Algorithm.
 * 
 * @param int1 	 Positive integer. 
 * @param int2 	 Positive integer. 
 * @param showWork 	 Boolean.  Yes or No.  Specifies whether to display work.  Default is No. 
 * @return Returns a numeric value.  Optionally outputs a string. 
 * @author Shakti Shrivastava (shakti@colony1.net) 
 * @version 1, November 8, 2001 
 */
function GCD(int1, int2)
{
  Var ShowWork=False;
  If (ArrayLen(Arguments) eq 3 AND Arguments[3] eq "yes"){
    ShowWork=True;
  }
   
  // if both numbers are 0 return undefined
  if (int1 eq 0 and int2 eq 0) return 'Undefined';

  // if both numbers are equal or either one of them is equal to 0 
  // then return any 1 of those numbers appropriately
  if (int1 eq int2 or int2 eq 0) return int1;
  if (int1 eq 0) return int2;

  // if int2 divides int1 "properly" then we have reached our final 
  //   step. So we output the last step and exit the function.
  if (int1 mod int2 eq 0) {
    if(ShowWork EQ True) {
      WriteOutput("<br>"&int1&"= "&fix(int1/int2)&" X "&int2&" + "&int1 mod int2); 
    }
    // this line outputs the last iteration
    if (ShowWork EQ True) {
      return "<p>GCD = "&int2; //print the GCD
    }
    else{
      return int2;
    }
  }

  // if int2 does not divides int1 "properly" then we recurse using
  // int1 equal to int2 and int2 equal to int1 mod int2
  else {
    if(ShowWork EQ True)
      // this line outputs calculations from each iteration. you can safely
      // delete/comment out this line if you dont need to display the steps.
      WriteOutput("<br>"&int1&"= "&fix(int1/int2)&" X "&int2&" + "&int1 mod int2); 
  }
  //since we still have not reached the last step we recall the function 		
  //(recurse)
  GCD(int2, int1 mod int2, ShowWork);
}
</cfscript>

<cfscript>
/**
 * Finds the GCD (greatest common factor [divisor]) of two numbers using the Extended Euclidean Algorithm.
 * 
 * @param m 	 Positive integer. (Required)
 * @param n 	 Positive integer. (Required)
 * @param showWork 	 Boolean.  Yes or No.  Specifies whether to display work.  Default is No. (Optional)
 * @return Returns a numeric value.  Optionally outputs a string. 
 * @author Shakti Shrivastava (shakti@colony1.net) 
 * @version 1, March 6, 2010 
 */
function GCDee(m,n)
{
  // initialize variables for calculations.
  Var ShowWork=False;
  Var r = arraynew(1); 
  Var q=arraynew(1); 
  Var s=arraynew(1); 
  Var t=arraynew(1);
  Var iter=100;
  Var j=3;
  Var c1=0;
  Var c2=0;
  Var GCD=0;
  Var pos_c1=0;
  Var pos_c2=0;
  r[1]=m; 
  r[2]=n; 
  s[1]=0; 
  s[2]=1; 
  t[1]=1; 
  t[2]=0; 

  If (ArrayLen(Arguments) eq 3 AND Arguments[3] eq "yes"){
    ShowWork=True;
  }

  // handle possible divide by zero error.
  if (r[2] eq 0) return 'Undefined';

  //populate array q with quotients using a[k-2] and a[k-1] as dividends and 
  //divisors respectively till we hit a quotient that gives the remainder 0. Once 
  //we reach that step the last value of q was our GCD. And then we substitute 
  //for sn and tn at each iteration using the statement above. When we reach 
  //the index of of the GCD in our iteration that's the index in s and t arrays 
  //which holds the value for s and t respectively.

  for(; j lte iter; j=j+1)
  {
	q[j-1]=Int(r[j-2]/r[j-1]);	
	r[j]=r[j-2] mod r[j-1];
	s[j]=s[j-2]-q[j-1]*s[j-1];
	t[j]=t[j-2]-q[j-1]*t[j-1];

    //once we reach a non-zero remainder we know we have our values.
	if(r[j] eq 0)
	{
		gcd=r[j-1];
		c1=t[j-1];
		c2=s[j-1];
		break;
	}
  }

  //Now we make c1 > 0 if it was negative 
  pos_c1=c1; pos_c2=c2;
  if(pos_c1 lte 0)
  {
	while(pos_c1 lte 0)
	{
		pos_c1=pos_c1+(r[2]/gcd);
		pos_c2=pos_c2-(r[1]/gcd);
	}
  }

  if (ShowWork EQ True) {
  //Write the final answer. The code from hereon simply displays all oour //calculated results.
  WriteOutput("a = " &r[1]&", b = " &r[2]&", GCD = g = " &gcd&", s = " &c1&", t = " &c2);
  WriteOutput("<br>");
  WriteOutput("Thus expressing g in the form of sa + tb = gcd(a,b),<blockquote>");
  WriteOutput("("&c1&") * ("&r[1]&") + ("&c2&") * ("&r[2]&") = "&gcd);
  WriteOutput("</blockquote>");
  if(pos_c1 lte 0)
  {
  WriteOutput("<br>Solution with s > 0<br><blockquote>s = "&pos_c1&", t = "&pos_c2&"</blockquote>");}
  WriteOutput("</blockquote>");
  //exit the function
  return'';
  }
  else {
    return gcd;
  }
}
</cfscript>

<cfscript>
/**
 * Calculates distance between Latitude/Longitude points using haversine formula.
 * 
 * @param lat1 	 latitude of first point (Required)
 * @param lon1 	 longitude of first point (Required)
 * @param lat2 	 latitude of second point (Required)
 * @param lon2 	 longitude of second point (Required)
 * @param units 	 Units for return value. Default is miles. (Optional)
 * @return Returns numeric distance between the two points. Units varies, default is miles. 
 * @author Henry Ho (henryho167@gmail.com) 
 * @version 0, January 8, 2013 
 */
function getDistance(lat1, lon1, lat2, lon2, units = 'miles')
{
	// earth's radius. Default is miles.
	var radius = 3959;
	if (arguments.units EQ 'kilometers' )
		radius = 6371;
	else if (arguments.units EQ 'feet')
		radius = 20903520;
	
	var toRad = pi() / 180;
	var dLat = (lat2-lat1) * toRad;
	var dLon = (lon2-lon1) * toRad; 
	var a = sin(dLat/2)^2 + cos(lat1 * toRad) * cos(lat2 * toRad) * sin(dLon/2)^2; 
	var c = 2 * createObject("java","java.lang.Math").atan2(sqr(a), sqr(1-a));
	
	return radius * c;
}
</cfscript>

<cfscript>
/**
 * Creates an array of all the prime numbers from 1 to the specified integer.
 * 
 * @param topInt 	 The number to calculate primes for. (Required)
 * @return Returns an array. 
 * @author Steven Van Gemert (svg2@placs.net) 
 * @version 3, July 31, 2004 
 */
function GetPrimes(topInt) {
	var stepInt = 0;
	var i = 0;
	var primes = arraynew(1);
	var di = 4; //Wheel factor.
	var maxfactor = 0;
	var thisnumberoffactors = 0;
	var thismaxfactor = 0;
	var isprime = "yes";

	if(topInt is 1) return primes;
	primes[1] = 2;
	if(topInt is 2) return primes;
	primes[2] = 3;
	if(topInt LTE 4) return primes;

	maxfactor = ceiling(sqr(topInt));
	primes = getPrimes(maxfactor); //Recursion call. Find the primes for the square root of the passed number.

	//Make the current maxfactor odd. We will use this as a starting point for checking for primes above the square root of this number.
	maxfactor = maxfactor + 1 + (1 * (not ((maxfactor + 1) mod 2)));

	//Now determine the appropriate wheel factor beginning value.
	if(not (maxfactor mod 3)){
		maxfactor = maxfactor + 2;
		di = 4;
	} else if(not ((maxfactor + 2) mod 3)){
		di = 2;
	}
	else{
		di = 4;
	}

	thisnumberoffactors = arraylen(primes);  
	for(stepInt=maxfactor; stepInt lte topInt; stepInt=stepInt+di) {
		di = 6 - di; //Implement wheel factor. Every third odd number will be divisible by 3. Don't check it.
	
		//This will be the limit to where we check for factors. There must be at least one factor less than the square root of the number.
		thismaxfactor = sqr(stepInt);

		isprime = "yes"; //Assume this number is prime.

		for(i=1; i LTE thisnumberoffactors; i = i + 1){ //For each factor...
			if(not (stepInt mod primes[i])){
			isprime = "no"; //Indicate that this number is not prime.
			break; //Break if we find a valid factor.
			} else if(primes[i] GT thismaxfactor){ //If we have reached the square root.
			break; //Stop processing...we have now validated this number as a prime.
			}
		}
		if(isprime)ArrayAppend(primes,stepInt); //If this number is prime, then add it to the array of primes.
	}

	return primes;
}
</cfscript>

<cfscript>
/**
 * This UDF returns a random number of a length passed in by the user.
 * Updates by original author with help from Steven Van Gemert.
 * 
 * @param length 	 Length of number. (Required)
 * @return Returns a number. 
 * @author Christopher Jordan (cjordan@placs.net) 
 * @version 2, May 12, 2006 
 */
function GetRandomNumber(length) {
	var i                 = "";
	var Seed              = "";
	var RandomNumber      = "";
	var ThisPart          = "";
	var TheTimeNow        = CreateODBCTime(Now());
	// change these values if you like
	var ThisStartTime     = CreateDateTime( Year(Now()), Month(Now()), Day(Now()), "09", "30", "00" );
	var ThisStopTime      = CreateDateTime( Year(Now()), Month(Now()), Day(Now()), "10", "00", "00" );
      
	// reseed only once every week between the specified start and stop times. In this case, if it's a tuesday between 9:30 and 10:00 in the morning.
	if(DayOfWeek(Now()) EQ 3 AND (TheTimeNow GTE ThisStartTime AND TheTimeNow LTE ThisStopTime)){
		// use just the numeric portions (or at least the last nine digits) of a UUID as a "random" seed
		Seed = Right(ReReplaceNoCase(CreateUUID(),"[A-F,\-]","","ALL"),9);
		Randomize(Seed);
	}

	// The use of NumberFormat in the following while loop assures the possiblity of having numbers which contain multiple consecutive zeros
	while (length){
		if(length GT 8){
			ThisPart = RandRange(0,99999999);
			ThisPart = NumberFormat(ThisPart,RepeatString("0",8));
			RandomNumber = RandomNumber & ThisPart;
			length = length - Len(ThisPart);
		} else {
			ThisPart = RandRange(0,RepeatString("9",length));
			ThisPart = NumberFormat(ThisPart,RepeatString("0",length));
			RandomNumber = RandomNumber & ThisPart;
			length = length - Len(ThisPart);
		}
	}
	return RandomNumber;
}
</cfscript>

<cfscript>
/**
 * Converts from hexadecimal (base16) to decimal (base10).
 * 
 * @param str 	 String representing hexadecimal value you want converted to decimal. 
 * @return Returns a number. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, November 6, 2001 
 */
function HexToDec(str){
  return InputBaseN(str, 16);
}
</cfscript>

<!---
 Converts a 32-bit hexadecimal floating-point number to a java float
 
 @param hex 	 Hex input. (Required)
 @return Returns a number. 
 @author Leigh (cfsearching@yahoo.com) 
 @version 1, June 22, 2010 
--->
<cffunction name="hexToFloat" returntype="numeric" access="public" output="false"
        hint="Converts a 32-bit hexadecimal representation (IEEE 754 floating-point number) to a java Float">
    <cfargument name="hex" type="string" required="true" />

    <cfset var longValue     = "">

    <cfif reFindNoCase("[^[:xdigit:]]", arguments.hex)>
        <cfthrow message="Argument.hex does not contain a recognized hexidecimal string" type="InvalidArgument" />
    </cfif>
    
    <cfset longValue = javacast("long", 0).parseLong( arguments.hex, 16 ) />
    <cfreturn javacast("float", 0).intBitsToFloat( longValue.intValue() ) />
</cffunction>

<cfscript>
/**
 * Bins the elements of an array into equally spaced containers and returns the number of elements in each container.
 * 
 * @param y 	 Array of numbers. (Required)
 * @param low 	 Lowest container midpoint. (Optional)
 * @param hi 	 Highest container midpint. (Optional)
 * @param num 	 Number of containers. (Optional)
 * @return Returns an array. 
 * @author Paul Dragos (dragosp@battelle.org) 
 * @version 1, January 2, 2007 
 */
function histogram(y) {
	// Declarations
	var m = ArrayNew(1);	// array of bin Midpoints
	var b = ArrayNew(1);	// array of bin Boundaries
	var n = ArrayNew(1);	// array of Number of points in each bin
	var x = ArrayNew(2);	// 2-d array containing m and n above (returned)
	var i=1; 
	var j=1; 
	// Size of y
	var len = arrayLen(y);
	// Set the default upper and lower limits and number of bins
	var miny = arrayMin(y);
	var maxy = arrayMax(y);
	var nbins = 10;
	var binwidth = 1;
	// Set the limits if not using the defaults
	if(arrayLen(arguments) gte 2) {
    	miny = arguments[2];
    	maxy = arguments[3];
    	nbins = arguments[4];
 	}
	// Set the bin width
	binwidth = (maxy - miny) / (nbins-1);
	// Set the bin midpoints
	for(i=1; i LTE nbins; i=i+1) {
		m[i] = miny + (binwidth * (i-1));
    }
	// Set the bin boundaries
	for(i=1; i LTE (nbins+1); i=i+1) {
		b[i] = miny - (binwidth / 2) + (binwidth * (i-1));
    }
	// Count the number in each bin
	for(i=1; i LTE nbins; i=i+1) {
		n[i] = 0;  
	}
	for(j=1; j LTE len; j=j+1) {
		for(i=1; i LTE nbins; i=i+1) {
			if(y[j] GTE b[i] AND y[j] LT b[i+1] ) 
			{
				n[i] = n[i] + 1;
			}
		}
    }
	for(i=1; i LTE nbins; i=i+1) 
	{  
		x[1][i] = m[i];  
		x[2][i] = n[i];  
	}
    return x;
}
</cfscript>

<cfscript>
/**
 * Function which returns the value of a certain quantile from a list of numeric values.
 * Rewritten by Raymond Camden to include VAR statements.
 * 
 * @param qtil 	 Threshold value for the quantile, numeric between 1 and 100 (Required)
 * @param range 	 Comma delimited list of numeric values (Required)
 * @return Returns a number. 
 * @author Ralf Guttmann (ralf.guttmann@hyperspace.de) 
 * @version 1, July 13, 2006 
 */
function hyQuantile(qtil, range) {
	var rangeArr = ListToArray(range);
	var hyqtil = "";
 	var nrofelms = "";
 	var nrofsteps = "";
	var percpos = "";
	var percpos1 = "";
 	var percpos2 = "";
	var rP1 = "";
	var rP2 = "";
	var deltarp = "";
	var wfactor = "";
	var deltarp_v = "";

	qtil = qtil * 0.01;
	arraySort(rangeArr, "numeric");
  
	nrofelms = arrayLen(rangeArr);
	nrofsteps = qtil * (nrofelms - 1);
	
	if(int(nrofsteps) eq nrofsteps) {
		percpos = nrofsteps + 1;
		hyqtil = rangeArr[percpos];
    } else {
		percpos1 = Int(nrofsteps) + 1;
		percpos2 = percpos1 + 1;
		rP1 = rangeArr[percpos1];
		rP2 = rangeArr[percpos2];
		deltarp = rP2 - rP1;
		wfactor = nrofsteps - (Int(nrofsteps));
		deltarp_v = deltarp * wfactor;
		hyqtil = rP1 + deltarp_v;
	}
	return hyqtil;
}
</cfscript>

<cfscript>
/**
 * Returns the hypotenuse of a right triangle by Pythagorean theorem, given the lengths of the other two sides.
 * 
 * @param x 	            Length of one side adjacent to the right angle 
 * @param y 	            Length of the other side adjacent to the right angle 
 * @return Returns a simple value. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1.0, July 18, 2001 
 */
function Hypotenuse(x,y)
{
	Return(Sqr(x^2 + y^2));
}
</cfscript>

<cfscript>
/**
 * Calculates the initial true course between two latitudes and longitudes.
 * 
 * @param lat1 	 Latitude of the first point in degrees. (Required)
 * @param lon1 	 Longitude of the first point in degrees. (Required)
 * @param lat2 	 Latitude of the second point in degrees. (Required)
 * @param lon2 	 Longitude of the second point in degrees. (Required)
 * @return Returns a number or an error string. 
 * @author Tom Nunamaker (tom@toshop.com) 
 * @version 1, May 14, 2002 
 */
function InitialTrueCourse(lat1,lon1,lat2,lon2)
{
  // Check to make sure latitutdes and longitudes are valid
  if(lat1 GT 90 OR lat1 LT -90 OR
     lon1 GT 180 OR lon1 LT -180 OR
     lat2 GT 90 OR lat2 LT -90 OR
     lon2 GT 280 OR lon2 LT -280) {
    Return ("Incorrect parameters");
  }
     
  // Calculate distance betweent the two points in radians
  d = LatLonDist(lat1,lon1,lat2,lon2,'radians');


  // Convert latitudes and longitudes to radians and set truc course to zero
  lat1 = lat1 * pi()/180;
  lon1 = lon1 * pi()/180;
  lat2 = lat2 * pi()/180;
  lon2 = lon2 * pi()/180;
  tc1 = 0;  
  
  // Handle the special cases of starting at the poles 
  if(lat1 IS pi()/2)
       Return ( 180 );    //  starting from noth pole
  if(lat1 IS -1*pi()/2)
       Return ( 360 );  //  starting from south pole

  
  if (sin(lon2 - lon1) LT 0)
    tc1 = acos((sin(lat2)-sin(lat1)*cos(d))/(sin(d)*cos(lat1)));
  else
    tc1 = 2*pi()-acos((sin(lat2)-sin(lat1)*cos(d))/(sin(d)*cos(lat1)));  

  Return ( tc1 * 180/pi() );
}
</cfscript>

<!---
 I check if a point is inside of a polygon.
 
 @param polygonXCoordinates 	 I am a list of X coordinates that make the polygon. I default to an empty string. (Optional)
 @param polygonYCoordinates 	 I am a list of Y coordinates that make the polygon. I default to an empty string. (Optional)
 @param pointX 	 I am the x coordinate of the point to check. I default to an empty string. (Optional)
 @param pointY 	 I am the y coordinate of the point to check.  I default to an empty string. (Optional)
 @return Returns a boolean. 
 @author John Allen (jallen@figleaf.com) 
 @version 1, October 22, 2010 
--->
<cffunction name="inPolygon" output="false" returntype="boolean" access="public" 
	displayname="In Polygon" hint="I check if a point is inside of a polygon."
	description="I check if the passed in pointX and pointY are inside of a the passed in polygon coordinates.">
	
	<cfargument name="polygonXCoordinates" type="any" default=""
		hint="I am a list of X coordinates that make the polygon. I default to an empty string." />
	<cfargument name="polygonYCoordinates" type="any" default=""
		hint="I am alist of Y coordinates that make the polygon. I default to an empty string." />
	<cfargument name="pointX" type="any" default=""
		hint="I am the x coordinate of the point to check. I default to an empty string." />
	<cfargument name="pointY" type="any" default=""
		hint="I am the y coordinate of the point to check.  I default to an empty string." />
	
	<cfset var polygon = createObject("java", "java.awt.Polygon").init() />
	<cfset var x = 0 />
	
	<cfif listLen(arguments.polygonXCoordinates) neq listLen(arguments.polygonYCoordinates)>
		<cfthrow message="The lenght of the x and y coordinates lists, used to build the Polygon, are not the same length." />
	</cfif>
	
	<!--- create the polygon object --->
	<cfloop from="1" to="#listLen(arguments.polygonXCoordinates)#" index="x">
		<cfset polygon.addPoint(
						javaCast('int', listGetAt(arguments.polygonXCoordinates, x)), 
						javaCast('int', listGetAt(arguments.polygonYCoordinates, x))) />
	</cfloop>
	
	<!--- check if the supplied x/y point is in the polygon --->
	<cfreturn polygon.contains(
						javaCast('int', arguments.pointX), 
						javaCast('int', arguments.pointY)) />
</cffunction>

<cfscript>
/**
 * Rounds any real number to a user specified interval.
 * 
 * @param nNumber 	 The number to round. (Required)
 * @param nInterval 	 The number to round to. (Required)
 * @param bOption 	 Used to calculate percentage for rounding. (Optional)
 * @return Returns a number. 
 * @author Rob Rusher (rob@robrusher.com) 
 * @version 1, July 20, 2005 
 */
function intervalRound(nNumber, nInterval){
	var nMultipler = fix(nNumber / nInterval); // How many times does the interval go into intNumber
	var bOption = 0;

	if(arrayLen(arguments) GTE 3 AND arguments[3])
		if(((nNumber mod nInterval) / nInterval) gte .5) bOption = 1; // Calculate percentage for rounding option.

	return (nInterval * nMultipler) + (bOption * nInterval);
}
</cfscript>

<cfscript>
/**
 * Calculating the inverse normal cumulative distribution function
 * 
 * @param v 	 Numeric between 0 and 1 (Required)
 * @return returns inverse of a number 
 * @author Paul Kukiel (kukielp@gmail.com) 
 * @version 0, March 7, 2009 
 */
function inverseNorms(v){
		
		var a1 = -39.69683028665376;
		var a2 = 220.9460984245205;
		var a3 = -275.9285104469687;
		var a4 = 138.3577518672690;
		var a5 = -30.66479806614716;
		var a6 = 2.506628277459239;
		
		var b1 = -54.47609879822406;
		var b2 = 161.5858368580409;
		var b3 = -155.6989798598866;
		var b4 = 66.80131188771972;
		var b5 = -13.28068155288572;
	
		var c1 = -0.007784894002430293;
		var c2 = -0.3223964580411365;
		var c3 = -2.400758277161838;
		var c4 = -2.549732539343734;
		var c5 = 4.374664141464968;
		var c6 = 2.938163982698783;
	
		var d1 = 0.007784695709041462;
		var d2 = 0.3224671290700398;
		var d3 = 2.445134137142996;
		var d4 = 3.754408661907416;
		
		var p_low = 0.02425;
		var p_high = 1 - p_low;
		var q = 0;
		var r = 0;
		var result = 0;
		
		//Rational approximation for lower region
		if((0 lt arguments.v) and  (arguments.v lt p_low)){
			q = sqr(-2*log(arguments.v));
			result = (((((c1*q+c2)*q+c3)*q+c4)*q+c5)*q+c6) / ((((d1*q+d2)*q+d3)*q+d4)*q+1);
		//Rational approximation for central region
		}else{
			if((p_low lte arguments.v) and (arguments.v lte p_high )){
				q = arguments.v - 0.5;
				r = q*q;
				result = (((((a1*r+a2)*r+a3)*r+a4)*r+a5)*r+a6)*q / (((((b1*r+b2)*r+b3)*r+b4)*r+b5)*r+1);
				//Rational approximation for upper region
			}else{
				if((p_high lt arguments.v) and (arguments.v lt 1)){
					q = sqr(-2*log(1-arguments.v));
					result = -(((((c1*q+c2)*q+c3)*q+c4)*q+c5)*q+c6) / ((((d1*q+d2)*q+d3)*q+d4)*q+1);
				}
			}
        }
		
		return result;
	}
</cfscript>

<cfscript>
/**
 * Returns true if the number passed it is even, returns false if it is not.
 * 
 * @param num 	 Number you want to test. 
 * @return Returna a Boolean. 
 * @author Mark Andrachek (hallow@webmages.com) 
 * @version 1, November 27, 2001 
 */
function IsEven(num) {
  // We only operate on numbers, otherwise we
  // we just return false.
  if (IsNumeric(num)) {
    //if it's evenly divisible by 2, it's
    //even. otherwise, it's odd. ;)
    return (not num mod 2);
  }
  else {
    return No;
  }
}
</cfscript>

<cfscript>
/**
 * Returns True if A is a factor of B.
 * 
 * @param a 	 Any non negitive integer greater than or equal to 1. 
 * @param b 	 Any non negitive integer greater than or equal to 1. 
 * @return Returns true or false. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, July 18, 2001 
 */
function IsFactor(a,b)
{
  if (Int(b/a) EQ b/a){
    Return True;
    }
  else { 
    Return False;
  }
}
</cfscript>

<cfscript>
/**
 * IsFloat() determines if a number is a float or whole number. Returns true for float.
 * Version 2 by RCamden (ray@camdenfamily.com)
 * 
 * @param eInt 	 Number to check (Required)
 * @return Returns a boolean. 
 * @author Phillip Holmes (pholmes@mediares.com) 
 * @version 1, April 22, 2003 
 */
function isFloat(eInt) {
	return (find(".",eInt) gt 0) and isNumeric(eInt);
}
</cfscript>

<cfscript>
/**
 * Checks to see if a var is an integer.
 * version 1.1 - mod by Raymond Camden
 * 
 * @param varToCheck 	 Value you want to validate as an integer. 
 * @return Returns a Boolean. 
 * @author Nathan Dintenfass (nathan@changemedia.com) 
 * @version 1.1, April 10, 2002 
 */
function isInt(varToCheck){
  return isNumeric(varToCheck) and round(varToCheck) is vartoCheck;
}
</cfscript>

<cfscript>
/**
 * Returns true if the number passed it is odd, returns false if it is not.
 * 
 * @param num 	 Number you want to test. 
 * @return Returna a Boolean. 
 * @author Mark Andrachek (hallow@webmages.com) 
 * @version 1, November 27, 2001 
 */
function IsOdd(num) {
  // We only operate on numbers, otherwise we
  // we just return false.
  if (IsNumeric(num)) {
    //if it's evenly divisible by 2, it's
    //even. otherwise, it's odd. ;)
    return YesNoFormat(num MOD 2);
  }
  else {
    return No;
  }
}
</cfscript>

<cfscript>
/**
 * Returns True if the specified number is a perfect number.
 * 
 * @param number 	 Integer greater than zero to test. 
 * @return Returns a Boolean value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, September 6, 2001 
 */
function IsPerfectNumber(number)
{
  Var i=0;
  Var factors = "";
  Var factorArray=0;
  Var sum=0;
  if (number lt 1){
    return False;
    break;
  }  
  for (i=1; i LTE number/2; i=i+1) {
    if (Int(number/i) EQ number/i) {
      factors = ListAppend(Factors, i);
    }
  }  
  factorArray=ListToArray(factors);
  sum=ArraySum(factorArray);
  if (sum eq number){
    return True;
  }
  else{
    return False;
  }
}
</cfscript>

<cfscript>
/**
 * Determines if a point lies within a circle.
 * 
 * @param pointX 	 X value of point. (Required)
 * @param pointY 	 Y value of point. (Required)
 * @param circleX 	 X value of center of circle. (Required)
 * @param circleY 	 Y value of center of circle. (Required)
 * @param circleRadius 	 Radius of circle. (Required)
 * @return Returns a boolean. 
 * @author Keith Westcott (kaw4@york.ac.uk) 
 * @version 1, April 20, 2006 
 */
function isPointInCircle (pointX, pointY, circleX, circleY, circleRadius) {
	var dx = (circleX - pointX);
	var dy = (circleY - pointY);
	return (dx * dx + dy * dy) LTE circleRadius * circleRadius;
}
</cfscript>

<cfscript>
/**
 * Returns True if the specified number is a prime number.
 * Minor edits by Rob Brooks-Bilson (rbils@amkor.com).  Edit by Steve Ford (steve.ford@enline.com) to fix misidentification of 4 as a prime number.  Algorithm improved by Shakti Shrivastava (divine_shammer@yahoo.com) -check up to sqr root of integer.  Further refined by Sierra Bufe (sierra@brighterfusion.com).
 * 
 * @param inNum 	 Any integer greater than one that  you wish to test for prime. 
 * @return Returns a Boolean value 
 * @author Douglas Williams (klenzade@i-55.com) 
 * @version 1.2, November 21, 2001 
 */
function IsPrimeNumber(inNum)
{
  var i=0;
  if (inNum lt 2){
    return False;
    break;
  }
  for (i=2; i LTE (sqr(inNum)); i=i+1) {
    if (NOT inNum MOD i) {
      return False;
      break;
    }
  }
  return True;
}
</cfscript>

<cfscript>
/**
 * Takes any three numbers, checks to see whether they create a right triangle.
 * Optimizations by Rob Brooks-Bilson (rbils@amkor.com) and Sierra Bufe (sierra@brighterfusion.com)
 * 
 * @param x 	 Length of one side of the triangle. 
 * @param y 	 Length of the second side of the triangle. 
 * @param z 	 Length of the third side of the triangle. 
 * @return Returns a Boolean value. 
 * @author Joshua Kay (josh@dataquix.com) 
 * @version 1, December 7, 2001 
 */
function isRightTriangle(x,y,z){
  // Sort the side lengths from smallest to largest
  ArraySort(Arguments,"Numeric");
  // Use the familiar Pythagorian theorem (a^2+B^2=C^2) to determine if this is a right triangle
  Return (Arguments[1]^2 + Arguments[2]^2) EQ Arguments[3]^2;
}
</cfscript>

<cfscript>
/**
 * Returns true if passed value is formatted in &quot;baseEexp&quot; scientific notation.
 * Modified to allow D since versions prior to MX would allow D.
 * 
 * @param inNum 	 Number to check. (Required)
 * @return Returns a boolean. 
 * @author Shawn Seley (shawnse@aol.com) 
 * @version 2, July 10, 2003 
 */
function IsScientific(inNum) {
	if(IsNumeric(inNum) AND (FindNoCase("E", inNum) OR FindNoCase("D",inNum))) return true;
	else return false;
}
</cfscript>

<cfscript>
/**
 * Convert kilometers to nautical miles.
 * 
 * @param kilometers 	 The number of kilometers to convert. 
 * @return Returns a numerical value. 
 * @author Tom Nunamaker (tom@toshop.com) 
 * @version 1, February 24, 2002 
 */
function KilometersToNauticalMiles(kilometers) {
  // NOTE: 1852 meters has been adopted as the international nautical mile 6076.11549 feet)

  return kilometers / 1.852;
}
</cfscript>

<cfscript>
/**
 * Calculates the distance between two latitudes and longitudes.
 * This funciton uses forumlae from Ed Williams Aviation Foundry website at http://williams.best.vwh.net/avform.htm.
 * 
 * @param lat1 	 Latitude of the first point in degrees. (Required)
 * @param lon1 	 Longitude of the first point in degrees. (Required)
 * @param lat2 	 Latitude of the second point in degrees. (Required)
 * @param lon2 	 Longitude of the second point in degrees. (Required)
 * @param units 	 Unit to return distance in. Options are: km (kilometers), sm (statute miles), nm (nautical miles), or radians.  (Required)
 * @return Returns a number or an error string. 
 * @author Tom Nunamaker (tom@toshop.com) 
 * @version 1, May 14, 2002 
 */
function LatLonDist(lat1,lon1,lat2,lon2,units)
{
  // Check to make sure latitutdes and longitudes are valid
  if(lat1 GT 90 OR lat1 LT -90 OR
     lon1 GT 180 OR lon1 LT -180 OR
     lat2 GT 90 OR lat2 LT -90 OR
     lon2 GT 280 OR lon2 LT -280) {
    Return ("Incorrect parameters");
  }

  lat1 = lat1 * pi()/180;
  lon1 = lon1 * pi()/180;
  lat2 = lat2 * pi()/180;
  lon2 = lon2 * pi()/180;
  UnitConverter = 1.150779448;  //standard is statute miles
  if(units eq 'nm') {
    UnitConverter = 1.0;
  }
  
  if(units eq 'km') {
    UnitConverter = 1.852;
  }
  
  distance = 2*asin(sqr((sin((lat1-lat2)/2))^2 + cos(lat1)*cos(lat2)*(sin((lon1-lon2)/2))^2));  //radians
  
  if(units neq 'radians'){
    distance = UnitConverter * 60 * distance * 180/pi();
  }
  
  Return (distance) ;
}
</cfscript>

<cfscript>
/**
 * Calculates the latitude and longitude for a given latitude, longitude, true course and distance in nautical miles.
 * This function uses forumlae from Ed Williams Aviation Foundry website at http://williams.best.vwh.net/avform.htm.
 * 
 * @param lat1 	 Latitude of the first point in degrees. (Required)
 * @param lon1 	 Longitude of the first point in degrees. (Required)
 * @param tcl 	 True course. (Required)
 * @param d 	 Distance in nuatical miles from lat1/lon1. (Required)
 * @return Returns a string containing the latitude and longitude. 
 * @author Tom Nunamaker (tom@toshop.com) 
 * @version 1, May 16, 2002 
 */
function LatLonForCourseAndDistance(lat1,lon1,tc,d) {
	var lat = 1;
	var lon = 1;

	tc = tc * pi() / 180;
	d = d * pi()/(180*60);
	lat1 = lat1 * pi()/180;
	lon1 = lon1 * pi()/180;  
	lat = asin(sin(lat1)*cos(d)+cos(lat1)*sin(d)*cos(tc));
  
	if (abs(lat) IS pi()/2) lon = lon1;
	else lon = properMod(lon1-asin(sin(tc)*sin(d)/cos(lat))+pi(),2*pi()) - pi() ;

	lat = lat * 180/pi();
	lon = lon * 180/pi();
	
	return lat & "," & lon;
}
</cfscript>

<cfscript>
/**
 * Turn a list of numbers into a summation sequence.
 * 
 * @param list 	 List of values you want to return a summation sequence for. 
 * @param delim 	 Delimiter used to separate list elements.  Default is the comma. 
 * @return Returns a string. 
 * @author Jesse Monson (jesse@ixstudios.com) 
 * @version 1, March 25, 2002 
 */
function listAggregate(list) {
  var a=1;
  var sum=0;
  var sumList="";
  var delims=",";
  if (arrayLen(arguments) gte 2) {
    delims = arguments[2];
  }
    for ( ;a lte listLen(list,delims);a=a+1) {
      sum = sum + val(listGetAt(list,a,delims));
      sumList = ListAppend(sumList,sum,delims);
    }
  return sumList;
}
</cfscript>

<cfscript>
/**
 * Adds all the numbers in a delimited list returning the sum of the list.
 * 
 * @param listStr 	 Delimited list of numeric values you want to sum. 
 * @param delim 	 Optional delimiter for the list.  The default is the comma. 
 * @return Returns a numeric value. 
 * @author Douglas Williams (klenzade@i-55.com) 
 * @version 1.0, September 10, 2001 
 */
function listSum(listStr)
{
  var delim = ",";
  if(ArrayLen(Arguments) GTE 2) 
    delim = Arguments[2];
  return ArraySum(ListToArray(listStr, delim));
}
</cfscript>

<cfscript>
/**
 * Returns the logarithm to the base 2 of the value.
 * 
 * @param value 	 real number > 0. 
 * @return Returns a simple value. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, October 9, 2001 
 */
function Log2(x)
{
  if (x GT 0)
  	Return(Log(x) / Log(2));
  else
  	Return("undefined");
}
</cfscript>

<cfscript>
/**
 * Converts logic bit constants (TRUE, &quot;Yes&quot;, 1,FALSE,&quot;No&quot;,0) or logical expressions to bit values (1,0).  A non-boolean value returns a -1 value.
 * 
 * @param exp 	 Expresison to evaluate (Required)
 * @return Returns a Boolean. 
 * @author Joseph Flanigan (joseph@switch-box.org) 
 * @version 1, June 26, 2002 
 */
function Logic2bit(exp){
 if (IsBoolean(exp)){
  if (exp) return 1;
  if (NOT (exp)) return 0;
}
else return(-1);
}
</cfscript>

<cfscript>
/**
 * Returns the logarithm of a value to the specified base.
 * 
 * @param value 	 real number > 0. 
 * @param base 	 real number > 0. 
 * @return Returns a simpe value. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, October 9, 2001 
 */
function LogN(x, b)
{
  if (x GT 0)
  	Return(Log(x) / Log(b));
  else
  	Return("undefined");
}
</cfscript>

<!---
 Turns a decimal number into a reduced fraction.
 
 @param decimalNumber 	 number to turn into reduced fraction (Required)
 @return Returns a string. 
 @author Melissa Newlin (cyborgirlx@yahoo.com) 
 @version 0, April 7, 2010 
--->
<cffunction name="makeFraction" output="no" returntype="string" hint="turns a decimal number into a fraction">
	<cfargument name="decimalNumber" type="numeric" required="yes">
	<cfset var x=0>
	<cfset var numerator = ListLast(ARGUMENTS.decimalNumber,".")>
	<cfset var numeratorLength = Len(numerator)>
	<cfset var numFactors = "">
	<cfset var denomFactors = "">
	<cfset var denominator = 1>
	<cfset var GCD = 0>


	<cfloop from="1" to="#numeratorlength#" index="x">
		<cfset denominator = Evaluate(denominator & "0")>
	</cfloop>

	<!--- find factors of numerator --->
	<cfset x = 1>

	<cfloop condition="x NEQ numerator + 1">
		<cfif numerator MOD x EQ 0>
			<cfset numFactors = ListAppend(numFactors, x)>
		</cfif>
		<cfset x = x + 1>
	</cfloop>

	<!--- find factors of denominator --->
	<cfset x = 1>

	<cfloop condition="x NEQ denominator + 1">
		<cfif denominator MOD x EQ 0>
			<cfset denomFactors = ListAppend(denomFactors, x)>
		</cfif>
		<cfset x = x + 1>
	</cfloop>


	<!--- find greatest common divisor --->
	<cfset x = ListLen(numFactors)>

	<cfloop condition="GCD EQ 0">
		<cfif denomFactors CONTAINS ListGetAt(numFactors,x)>
			<cfset GCD = ListGetAt(numFactors,x)>
		<cfelse>
			<cfset x = x - 1>
		</cfif>
	</cfloop>

	<!--- set the "fractionalized" number --->
	<cfset numerator = numerator / GCD>
	<cfset denominator = denominator / GCD>

	<cfreturn "#ListFirst(ARGUMENTS.decimalNumber,".")# #numerator#/#denominator#">

</cffunction>

<cfscript>
/**
 * Returns the mean (average) value for a set of numberic values.
 * Although you could use the ArrayAvg function on an array, this funciton handles arrays so that it can be called from other functions in this library (see CVpop and CVsamp for examples).
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function Mean(values)
{
  if (IsArray(values)){
     Return ArrayAvg(values);
    }
  else {
     Return ArrayAvg(ListToArray(values));
    }  
}
</cfscript>

<cfscript>
/**
 * Returns the median (middle) value for a set of numberic values.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function Median(values)
{
  Var x = 0;
  Var NumberOfElements = 0;
  Var LeftCenterPosition = 0;
  Var RightCenterPosition = 0;
  Var MyArray = 0;
  if (IsArray(values)){
     MyArray = values;
    }
  else {
     MyArray = ListToArray(values);
    }
  ArraySort(MyArray, "numeric");
  x = ArrayToList(MyArray);
  NumberOfElements = ListLen(x);
  if ((NumberOfElements MOD 2) EQ 0) {
	  LeftCenterPosition = ListGetAt(x, (Int(NumberOfElements/2)), ",");
	  RightCenterPosition = ListGetAt(x, (Int(NumberOfElements/2)+1), ",");
	  Return (LeftCenterPosition + RightCenterPosition)/2;
    }
  else {
	  Return ListGetAt(x, Int(NumberOfElements/2)+1, ",");
    }
}
</cfscript>

<cfscript>
/**
 * Returns the midrange value for a set of numbers.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function Midrange(values)
{
  Var MyArray = 0;
  if (IsArray(values)){
     MyArray = values;
    }
  else {
     MyArray = ListToArray(values);
    }
  Return ((ArrayMax(MyArray) + ArrayMin(MyArray))/2);
}
</cfscript>

<cfscript>
/**
 * Returns the smallest and largest value in a set of values.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a structure. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function MinMax(values)
{
  Var MyArray = 0;
  Var mMinMax = StructNew();
  if (IsArray(values)){
     MyArray = values;
    }
  else {
     MyArray = ListToArray(values);
    }
  mMinMax["MinVal"] = ArrayMin(MyArray);
  mMinMax["MaxVal"] = ArrayMax(MyArray);
  Return mMinMax;
}
</cfscript>

<cfscript>
/**
 * Returns the mode and frequency for a given set of values.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a structure. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, September 7, 2001 
 */
function Mode(values)
{
  Var MyStruct = StructNew();
  Var Frequency = 0;
  Var Mode = "";
  Var mMode = StructNew();
  Var i=0;
  if (IsArray(values)){
     values = ArrayToList(values);
    }
  for (i=1; i LTE ListLen(values); i=i+1) {  
    element = ListGetAt(values, i);
    if (StructKeyExists(MyStruct, element)) {
      StructUpdate(MyStruct, element,  IncrementValue(MyStruct[element]));		
      }
    else {
      StructInsert(MyStruct, element, "1");
    }
  }
  MyKeyArray = StructKeyArray(MyStruct);
  for (i=1; i LTE ArrayLen(MyKeyArray); i=i+1) {
  	if (MyStruct[MyKeyArray[i]] GTE Frequency) {
  		Frequency = MyStruct[MyKeyArray[i]];
      }
  }
  for (i=1; i LTE ArrayLen(MyKeyArray); i=i+1) {
    if (MyStruct[MyKeyArray[i]] eq Frequency) {
  	  Mode = ListAppend(Mode, MyKeyArray[i]);
      }
  }
 mMode["Mode"] = ListSort(Mode, "Numeric");
 mMode["Frequency"] = Frequency;
 Return mMode;
}
</cfscript>

<cfscript>
/**
 * Convert Nautical Miles to Kilometers.
 * NOTE: 1852 meters has been adopted as the international nautical mile (6076.11549 feet)
 * 
 * @param NauticalMiles 	 The number of nautical miles you want converted to kilometers. 
 * @return Returns a numeric value. 
 * @author Tom Nunamaker (tom@toshop.com) 
 * @version 1, March 18, 2002 
 */
function NauticalMilesToKilometers(NauticalMiles){
  return NauticalMiles * 1.852;
}
</cfscript>

<cfscript>
/**
 * Creates a base 36 from numbers that don't fit inside an integer.
 * 
 * @param num 	 Number to convert. (Required)
 * @return Returns a string. 
 * @author David Edgar (appsupport@hotmail.com) 
 * @version 0, June 11, 2009 
 */
function nBase36(num){
	var stream = chr(32);
	var chars = "0123456789abcdefghijklmnopqrstuvwxyz";
	var res = "";
	if (num GT 0) { 
		while (num GT 0) {
			res = num - 36 * int(num / 36);
			num = int(num / 36);
			stream = mid(chars,res + 1,1) & stream;
		}
	} else {
		stream = num;
	}
	return(stream);
}
</cfscript>

<cfscript>
/**
 * Calculates the normal distribution for a given mean and standard deviation with cumulative=true
 * 
 * @param x 	 Value to compute the cumulative normal distribution for. (Required)
 * @param mean 	 Mean value. (Required)
 * @param sd 	 Standard deviation. (Required)
 * @return Returns a number. 
 * @author Rob Ingram (rob.ingram@broadband.co.uk) 
 * @version 1, June 14, 2003 
 */
function NormDist(x, mean, sd) {
    var res = 0.0;
    var x2 = 0.0;
    var oor2pi = 0.0;
    var t = 0.0;
	
    x2 = (x - mean) / sd;
    if (x2 eq 0) res = 0.5;
    else
    {
        oor2pi = 1/(sqr(2.0 * 3.14159265358979323846));
        t = 1 / (1.0 + 0.2316419 * abs(x2));
        t = t * oor2pi * exp(-0.5 * x2 * x2) 
             * (0.31938153   + t 
             * (-0.356563782 + t
             * (1.781477937  + t 
             * (-1.821255978 + t * 1.330274429))));
        if (x2 gte 0)
        {
            res = 1.0 - t;
        }
        else
        {
            res = t;
        }
    }
    return res;
}
</cfscript>

<cfscript>
/**
 * Converts from octal (base8) to decimal (base10).
 * 
 * @param str 	 String (hexadecimal number)  to convert to decimal. 
 * @return Returns a number. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, November 6, 2001 
 */
function OctToDec(str){
  return InputBaseN(str, 8);
}
</cfscript>

<cfscript>
/**
 * Calculates the Pearson correlation.
 * 
 * @param arrayOfStructures 	 An array of structures containing the specified keys for every element. (Required)
 * @param xkey 	 A string: the structKey containing the first variable. (Required)
 * @param ykey 	 A string: the structKey containing the second variable. (Required)
 * @return A structure with the perasonCorrelation and a boolean indicating if the input was valid. 
 * @author Martijn van der Woud (martijnvanderwoud@orange.nl) 
 * @version 0, September 27, 2008 
 */
function pearsonCorrelation (arrayOfStructs, xKey, yKey) {
	
	// numeric: holds the mean value for the xKey 
	var xMean = 0;
	// numercic: holds the mean value for the yKey
	var yMean = 0;
	// numeric: just a loop index
	var i=0;
	// numeric: holds the sum of all values for the xKey 
	var xSum = 0;
	// numeric: holds the sum of all values for the yKey 
	var ySum = 0;	
	// numeric: the number of elements in arrayOfStructs	
	var length = arrayLen(arguments.arrayOfStructs);
	// numeric: the sum of squared deviations for the xKey
	var sqDevX = 0;
	// numeric: the sum of squaried deviations for the yKey
	var sqDevY = 0;
	// numeric: the sum of cross-products
	var crossProductSum = 0;
	// numeric: holds the deviation from the mean for the xKey in a specific element
	var xDeviation = 0;
	// numeric: holds the deviation from the mean for the yKey in a specific element
	var yDeviation = 0;
	// numeric: the Pearson correlation
	var pearsonCorrelation = 0;
	// struct: the results to return
	var results = structNew();
	
			
	// loop over elements in argument arrayOfStructs
	for(i = 1; i lte length; i = i+1) {
	
		// add the xKey and yKey values of the current element to their corresponding sum variable
		xSum = xSum + arguments.arrayOfStructs[i][arguments.xKey];
		ySum = ySum + arguments.arrayOfStructs[i][arguments.yKey];
	
	} // end of loop over elements in argument arrayOfStructs
	
	// calculate the means of xKey and yKey
	xMean = xSum / length;
	yMean = ySum / length;


	// again, loop over elements in argument arrayOfStructs
	for(i = 1; i lte length; i = i+1) {
		
		// calculate deviations from the mean for the current element
		xDeviation = arguments.arrayOfStructs[i][arguments.xKey] - xMean;
		yDeviation = arguments.arrayOfStructs[i][arguments.yKey] - yMean;
		
		// update sums of squared deviations and cross-products
		sqDevX = sqDevX + xDeviation^2;
		sqDevY = sqDevY + yDeviation^2;			
		crossProductSum = crossProductSum + xDeviation * yDeviation;
	} // end of loop over elements in argument arrayOfStructs

	
	// if there is no variation in either xKey or yKey, the pearson correlation cannot be computed, so indicate an error
	if (min(sqDevX, sqDevY) eq 0) {
		results.inputValid = false;
		results.pearsonCorrelation = "";
	} else { // otherwise, calculatie the pearson correlation

		
		pearsonCorrelation = (crossProductSum / (length-1));
		pearsonCorrelation = pearsonCorrelation / sqr(sqDevX / (length-1));
		pearsonCorrelation = pearsonCorrelation / sqr(sqDevY / (length-1));
		
		results.inputValid = true;
		results.pearsonCorrelation = pearsonCorrelation;
	
	}
			
	return results;
}
</cfscript>

<cfscript>
/**
 * Returns the percentage of value out of maximum.
 * 
 * @param value 	 The value. 
 * @param maximum 	 The maximum value. 
 * @return Returns the percentage. 
 * @author Jennifer Larkin (mr_urc@drule.org) 
 * @version 1, September 6, 2001 
 */
function percentage(Value,Maximum) {
  return ((Value/Maximum)*100);
}
</cfscript>

<cfscript>
/**
 * Check the percentage change between 2 numbers.
 * 
 * @param var1 	 The first number. (Required)
 * @param var2 	 The second number. (Required)
 * @return Returns a string. 
 * @author Guillermo Cruz (gcruz@elkiwa.com) 
 * @version 1, July 3, 2002 
 */
function PercentageChange(var1,var2){			
	var maxNumber = max(var1,var2);
	var minNumber = min(var1,var2);
	var change = maxNumber - minNumber;
	var symbol = "";
		
	if (var1 EQ var2)   return 0;
	change = NumberFormat(change / var1 * 100, 0.00);	
	
	if(var1 GT var2) symbol = "-";
	else symbol = "+";

	return symbol & " " & change;	
}
</cfscript>

<cfscript>
/**
 * Function for calculating the percentile of a given number from a population of numbers.
 * 
 * @param number 	 The number you want to get the percentile rank of 
 * @param aPopulation 	 An array of numbers which is the population to find the percentile in 
 * @param insertNumber 	 Boolean value to decide if the number should be inserted into the population before calculation.  By default this is false. 
 * @return Returns a numeric percent value 
 * @author Nathan Dintenfass (nathan@changemedia.com) 
 * @version 1, July 30, 2001 
 */
function percentile(numberToCheck,populationArray){
	// (Thanks to Jim Flannery for pointing me at the formula).
	var ii = 1;
	//set a counter for the number below this value
	var countBelow = 0;
	//set a counter for how many instances of thisNumber there are
	var countWithin = 0;
	// deal with the optional parameter as to whether the number to check is to be added to the population.
	//if there a third argument and it is a boolean and it is true, insert the number to check 
	if(arraylen(arguments) gt 2 AND isBoolean(arguments[3]) and arguments[3])
		arrayAppend(populationArray,numberToCheck);
	//now, let's sort the array to make it easier to find the values
	arraySort(populationArray,"numeric");
	//loop through the array, setting the counters appropriately
	for(ii = 1; ii lte arraylen(populationArray); ii = ii + 1){
		//if this number is below numberToCheck, increment the countBelow
		if(populationArray[ii] lt numberToCheck){
			countBelow = countBelow + 1;
		}
		else{
			//if this number is equal to numberToCheck, increment the counterWithin
			if(populationArray[ii] eq numberToCheck){
				countWithin = countWithin + 1;
			}
			//if this number is above the numberToCheck break
			else{
				break;
			}
		}
	}
	//run the percentile formula and return
	return ((countBelow + 0.5 * countWithin)/arraylen(populationArray))*100;
}
</cfscript>

<cfscript>
/**
 * Returns the Permutation of n elements taken p at a time.
 * This funciton requires the Factorial() function from this library.
 * 
 * @param n 	 Any non-negative integer. 
 * @param p 	 Any non-negative integer, <= n 
 * @return Returns a simple value. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1.0, July 18, 2001 
 */
function Permutation(n,p)
{
  var RetVal = 0;
  if (p GT n) {
   RetVal = "undefined";
  }
  else
   RetVal = Factorial(n) / Factorial(n-p);  
  Return RetVal;
}
</cfscript>

<cfscript>
/**
 * Determines if the given point is within the given n-sided polygon.
 * 
 * @param polygon 	 A space-delimited list of coordinates. (Required)
 * @param point 	 A comma-delimited coordinate. (Required)
 * @return Returns a boolean. 
 * @author Joshua L. Olson (joshua@waetech.com) 
 * @version 1, December 7, 2004 
 */
function PointInPolygon(polygon, point) {
  var polygon_arr = ListToArray(polygon, " ");
  var polygon_arr_length = 0;
  
  var intersections = 0;
  
  var test_point_x = Val(ListFirst(point, ","));
  var test_point_y = Val(ListLast(point, ","));
  
  var i = "1";
  var dx = "0";
  var dy = "0";
  var cx = "0";
  
  var point_1 = "";
  var point_2 = "";
  var point_1_x = "";
  var point_1_y = "";
  var point_2_x = "";
  var point_2_y = "";
  var cross_y = "";
  
  polygon_arr_length = ArrayLen(polygon_arr);
  
  // Terminate early if this is not a complete polygon.
  if (polygon_arr_length LT "3") return false;
  
  // Append the first element to the end of the array so that we complete the
  // polygon, which is a prerequisite for this to work.
  ArrayAppend(polygon_arr, polygon_arr[1]);
  
  for (i = "1"; i LTE polygon_arr_length; i = i + "1") {
    // get the endpoints for the segment
    point_1 = polygon_arr[i];
    point_2 = polygon_arr[i + "1"];
  
    point_1_x = Val(ListFirst(point_1, ","));
    point_1_y = Val(ListLast(point_1, ","));
  
    point_2_x = Val(ListFirst(point_2, ","));
    point_2_y = Val(ListLast(point_2, ","));
  
    // Determine if segment crosses vector starting at point and extending right
  
    // Check that the line segment crosses the horizontal line extended left and
    // right from the given point.  We consider end-points on the horizontal line to
    // be above the horizontal line.
  
    cross_y = ((point_1_y LT test_point_y) AND (point_2_y GTE
  test_point_y)) OR
              ((point_2_y LT test_point_y) AND (point_1_y GTE test_point_y));
  
    if (cross_y) {
      // The segment crosses the horizontal plane.  Now determine if it's to the right
      // or left of the given point.
  
      dx = point_2_x - point_1_x;
      dy = point_2_y - point_1_y;
  
      // cx is the point at which the segment crosses the horizontal plane of the
      // given point.  This is a basic geometric calculation.
      cx = point_1_x + (dx * (test_point_y - point_1_y) / dy);
  
      // If the crossing point is to the right of the given point, count it
      if (cx GT test_point_x)
        intersections = (intersections + 1) MOD 2;
    }
  
  }
  // An odd number of intersections indicates that the point is within the polygon
  
  return intersections IS 1;
}
</cfscript>

<cfscript>
/**
 * Evaluates the Polynomial in the form y = an * x^n + a(n-1) * x^(n-1) + ... + a1 * x + a0 for a given value of x.
 * 
 * @param x 	 Any real value. 
 * @param a1 	 Real coefficient of highest power of x. 
 * @param a0 	 Real coefficient of second-highest power of x. 
 * @param a... 	 Additional coefficients. 
 * @return Returns a simple value. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1.0, July 18, 2001 
 */
function Polynomial(x, a1, a0)
{ 
	var RetVal = a1 * x + a0;  
	var arg_count = ArrayLen(Arguments);
	var opt_arg = 4;
	for( ; opt_arg LTE arg_count; opt_arg = opt_arg + 1 )
	{
		RetVal = RetVal * x + Arguments[opt_arg];
	}
	return(RetVal); 
}
</cfscript>

<cfscript>
/**
 * Computes the mathematical function Mod(y,x).
 * 
 * @param y 	 Number to be modded. 
 * @param x 	 Devisor. 
 * @return Returns a numeric value. 
 * @author Tom Nunamaker (tom@toshop.com) 
 * @version 1, February 24, 2002 
 */
function ProperMod(y,x) {
  var modvalue = y - x * int(y/x);
  
  if (modvalue LT 0) modvalue = modvalue + x;
  
  Return ( modvalue );
}
</cfscript>

<cfscript>
/**
 * Returns the two real roots of a polynomial in the form: ax^2 + bx + c = 0
 * 
 * @param a 	 Coefficient of x^2 term 
 * @param b 	 Coefficient of x term 
 * @param c 	 Constant 
 * @return Returns a structure. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, July 18, 2001 
 */
function Quadratic(a, b, c)
{
  Var mRoots = StructNew();
  Var first = 0;
  Var second = 0;
  Var denom = 2 * a;
  Var arg1 = b^2 - 4 * a * c;
  if (arg1 LT 0) {
    mRoots["Root1"] = "not real";
  	mRoots["Root2"] = "not real";
  }
  else {   
  	first = -b / denom;
  	second = Sqr(arg1) / denom;
  	mRoots["Root1"] = first + second;
  	mRoots["Root2"] = first - second; 
  }
  Return mRoots;
}
</cfscript>

<cfscript>
/**
 * Returns the first, second, or third quartile value for a set of numeric values.
 * 
 * @param values 	 Values to parse. (Required)
 * @param quartile 	 Numeric value between 1 and 3. (Required)
 * @return Returns a number. 
 * @author Nathan Mische (nmische@gmail.com) 
 * @version 0, June 11, 2009 
 */
function quartile(values, q) {
	var valueArray = 0;
	var numValues = 0;
	var leftIndex = 0;
	var rightIndex = 0;
	var middleIndex = 0;
	var median = 0;
	var i = 0;
	var halfValues = ArrayNew(1);
	var val = 0;

	if (IsArray(values)){
		valueArray = Duplicate(values);
	} else {
		valueArray = ListToArray(values);
	}

	ArraySort(valueArray,"numeric");
	numValues = ArrayLen(valueArray);

	// get the median
	if((numValues mod 2) eq 0) {
		leftIndex = Int(numValues/2);
		rightIndex = Int(numValues/2) + 1;
		median = (valueArray[leftIndex] + valueArray[rightIndex]) / 2;
	} else {
		middleIndex = Int(numValues/2) + 1;
		median = valueArray[middleIndex];
	}

	// return the quartile
	if (q eq 1) {
		for (i = 1; i lte numValues; i = i + 1){
			val = valueArray[i];
			if ( val lt median) {
				ArrayAppend(halfValues,val);
			} else {
				break;
			}
		}
		return Quartile(halfValues,2);
	} else if (q eq 2) {
		return median;
	} else if (q eq 3) {
		for (i = numValues; i gt 0; i = i - 1){
			val = valueArray[i];
			if ( val gt median) {
				ArrayAppend(halfValues,val);
			} else {
				break;
			}
		}
		return Quartile(halfValues,2);
	}

	// return a blank string if invalid quartile
	return "";

}
</cfscript>

<cfscript>
/**
 * Converts radians to degrees.
 * 
 * @param radians 	 Angle (in radians) you want converted to degrees. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function RadToDeg(radians)
{
  Return (radians*(180/Pi()));
}
</cfscript>

<cfscript>
/**
 * Returns the range for a set of numbers.
 * 
 * @param values 	            Comma delimited list or one dimensional array of numeric values 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function Range(values)
{
  Var MyArray = 0;
  if (IsArray(values)){
     MyArray = values;
    }
  else {
     MyArray = ListToArray(values);
    }  
  Return ArrayMax(MyArray) - ArrayMin(MyArray);
}
</cfscript>

<cfscript>
/**
 * Ranks a number within a set.
 * 
 * @param value 	 Value to rank. (Required)
 * @param set 	 List of numbers. (Required)
 * @return Returns a number. 
 * @author Scott Fitchet (scott@figital.com) 
 * @version 1, December 4, 2008 
 */
function rank(value, set) {

	// Assume the value is in first place
	var ranking = 1;
	var i = 1;

	// Loop over each value in the set
	for (i = 1; i lte listlen(set); i=i+1 ) {
		// If this value in the set is greater, decrease the ordinal
		if ( listgetat(set, i) gt value ) ranking=ranking+1;
	}
	
	return ranking;
}
</cfscript>

<cfscript>
/**
 * RoundIt will round any number to a specific decimal point.
 * Original UDF by Simon Horwith (shorwith@figleaf.com)
 * 
 * @param num 	 The number to be rounded. 
 * @param digits 	 The number of decimal places to round to. 
 * @return Returns a rounded number. 
 * @author Sierra Bufe (sierra@brighterfusion.com) 
 * @version 2, November 15, 2001 
 */
function RoundIt(num,digits) {
	var i = num;
	// multiply by 10 to the power of the number of digits to be preserved
	i = i * (10 ^ digits);
	// round off to an integer
	i = Round(i);
	// divide by 10 to the power of the number of digits to be preserved
	i = i / (10 ^ digits);
	// return the result
	return i;
}
</cfscript>

<cfscript>
/**
 * Rounds a number to a specified number of significant digits.
 * 
 * @param fInput 	 Number to round. (Required)
 * @param iDigits 	 Number of significant digits to return. (Required)
 * @return Returns a numeric value. 
 * @author jason snyder (jason.snyder@trw.com) 
 * @version 2, October 24, 2003 
 */
function RoundSigFig(fInput, iDigits) 
{
  //Local Variables
  var iLog = 0;
  var iTemp = 0;
  var fReturn = 0;

  //Execution
  if (fInput NEQ 0) { //If not zero round to significant digits.
    iLog=Int(Log10(Sgn(fInput)*fInput+0.0));
    iTemp=Round(fInput / (10^(iLog-iDigits+1)));
    //return(Log10(fInput+0.0)); //Debugging
    fReturn=evaluate(iTemp*(10^(iLog-iDigits+1)));
  } //End (Round to significant digits.)
  Return(fReturn);
} //End (RSigFig)
</cfscript>

<cfscript>
/**
 * Rounds a number up or down to the nearest specified multiple.
 * 
 * @param input 	 Number you want to round. (Required)
 * @param multiple 	 Multiple by which to round.  Default is 5. (Optional)
 * @param direction 	 Direction to round.  Options are Up or Down.  Default is Up (Optional)
 * @return Returns a numberic value 
 * @author Casey Broich (cab@pagex.com) 
 * @version 1, June 27, 2002 
 */
function RoundUpDown(input){
  var roundval = 5;
  var direction = "Up";
  var result = 0;

  if(ArrayLen(arguments) GTE 2) 
    roundval = arguments[2];
  if(ArrayLen(arguments) GTE 3) 
    direction = arguments[3];
  if(roundval EQ 0) 
    roundval = 1;

  if((input MOD roundval) NEQ 0){
     if((direction IS 1) OR (direction IS "Up")){
      result = input + (roundval - (input MOD roundval));
     }else{
      result = input - (input MOD roundval);
     }
  }else{
    result = input;
  }
  return result;
}
</cfscript>

<cfscript>
/**
 * This function formats a big decimal to scientific notation.
 * 
 * @param n 	 The number to format. (Required)
 * @param sigdigits 	 Number of significant digits. Defaults to 2. (Optional)
 * @return Returns a number. 
 * @author Tedd Van Diest (tedd@tedd.us) 
 * @version 1, July 12, 2006 
 */
function scientificFormat(n,m) {
	// init result var
	var result = "";
	// Create DecimalFormat object and initialize it with our mask.
	var df = createObject("java","java.text.DecimalFormat").init(m);
	// Create BigDecimal object and initialize it with our number.
	var bd = createObject("java","java.math.BigDecimal").init(n);
	// Format our number using our mask.
	result = df.format(bd);
	// Return results.
	return result;
}
</cfscript>

<cfscript>
/**
 * Returns the secant of an angle.
 * 
 * @param x 	 Any angle measured in radians. 
 * @return Returns a numeric value or string. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, October 9, 2001 
 */
function Sec(x)
{
  if (x EQ 90*(Pi()/180)){
    return "infinity";
    }
  else {
    return 1/cos(x);
  }
}
</cfscript>

<cfscript>
/**
 * Returns the hyperbolic secant of an angle.
 * 
 * @param x 	 Any angle expressed in radians. 
 * @return Returns a numeric value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, October 9, 2001 
 */
function Sech(x){
  return 2/(Exp(X)+Exp(-x));
}
</cfscript>

<cfscript>
/**
 * Returns the hyberbolic sine of an angle.
 * 
 * @param x 	 Any angle measured in radians. 
 * @return Returns a numeric value. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, October 9, 2001 
 */
function Sinh(x){
  Return((Exp(x) - Exp(-x)) / 2);
}
</cfscript>

<cfscript>
/**
 * Splits a numeric value into integer and decimal parts
 * version 0.1 by Darwan Leonardo Sitepu
 * version 1.0 by Adam Cameron. Renamed function, simplified logic, fixed a data truncation bug, returns a struct rather than a query now.
 * 
 * @param number 	 A numeric value to split into integer/decimal parts (Required)
 * @return Returns a struct with keys integer and decimal, containing the relevant parts of the original number 
 * @author Darwan Leonardo Sitepu (dlns2001@yahoo.com) 
 * @version 1, August 26, 2012 
 */
public struct function splitNumber(required numeric number){
	var result = {};
	result.integer = listFirst(number, ".");
	if (listLen(number, ".") > 1){
		result.decimal = listRest(number, ".");
	}else{
		result.decimal = 0;
	}
	return result;
}
</cfscript>

<cfscript>
/**
 * Returns the standard deviation calculated using the divisor n method.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.1, September 7, 2001 
 */
function StdDevPop(values)
{
  Var MyArray = 0;
  Var NumValues = 0;
  Var xBar = 0;
  Var SumxBar = 0;  
  Var i=0;
  if (IsArray(values)){
     MyArray = values;
    }
  else {
     MyArray = ListToArray(values);
    }
  NumValues = ArrayLen(MyArray);
  xBar = ArrayAvg(MyArray);
  for (i=1; i LTE NumValues; i=i+1) {
    SumxBar = SumxBar + ((MyArray[i] - xBar)*(MyArray[i] - xBar));
    }
  Return Sqr(SumxBar/NumValues);
}
</cfscript>

<cfscript>
/**
 * Returns the standard deviation calculated using the divisor n-1 method.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.1, September 7, 2001 
 */
function StdDevSamp(values)
{
  Var MyArray = 0;
  Var NumValues = 0;
  Var xBar = 0;
  Var SumxBar = 0;  
  Var i=0;
  if (IsArray(values)){
     MyArray = values;
    }
  else {
     MyArray = ListToArray(values);
    }    
  NumValues = ArrayLen(MyArray);
  xBar = ArrayAvg(MyArray);
  for (i=1; i LTE NumValues; i=i+1) {
    SumxBar = SumxBar + ((MyArray[i] - xBar)*(MyArray[i] - xBar));
    }
  Return Sqr(SumxBar/(NumValues-1));
}
</cfscript>

<cfscript>
/**
 * Calculates the surface area of a cone.
 * 
 * @param radius 	 1/2 the diameter of the base of the cone. 
 * @param slant 	 The height of the slant. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function SurfaceAreaCone(radius, slant)
{
  Return ((Pi() * radius^2) + (Pi() * radius * slant));
}
</cfscript>

<cfscript>
/**
 * Calculates the surface area of a cube.
 * 
 * @param side 	 Length of one side. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function SurfaceAreaCube(side)
{
  Return (6 * side^2);
}
</cfscript>

<cfscript>
/**
 * Calculates the surface area of a cylinder.
 * 
 * @param radius 	 1/2 the diameter of a cross-section of the cylinder. 
 * @param height 	 Height of the cylinder from base to base. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function SurfaceAreaCylinder(radius, height)
{
  Return ((2 * pi() * radius^2) + (2 * Pi() * radius * height));
}
</cfscript>

<cfscript>
/**
 * Calculates the surface area of a rectangular prism.
 * 
 * @param length 	 The length of the prism 
 * @param width 	 The width of the prism 
 * @param height 	 The height of the prism 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function SurfaceAreaRectangularPrism(length, width, height)
{
  Return ((2*length*height)+(2*length*width)+(2*width*height));
}
</cfscript>

<cfscript>
/**
 * Calculates the surface area of a sphere.
 * 
 * @param radius 	 1/2 the diameter of the sphere. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function SurfaceAreaSphere(radius)
{
  Return (4 * Pi() * radius^2);
}
</cfscript>

<cfscript>
/**
 * Calculates the surface area of a torus.
 * 
 * @param MajorRadius 	 1/2 the diameter of the large circle. 
 * @param MinorRadius 	 1/2 the diameter of a cross-section. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function SurfaceAreaTorus(MajorRadius, MinorRadius)
{
  Return (4 * Pi()^2 * MajorRadius * MinorRadius);
}
</cfscript>

<cfscript>
/**
 * Symmetrically rounds any number to a specific decimal point, preventing a common &quot;rounding bias&quot; from skewing results.
 * Ver 1.1: Made numDigits an optional parameter instead of required.
 * 
 * @param theNumber 	 Number you want to round. (Required)
 * @param numDigits 	 Number of decimal places to round to.  (Optional)
 * @return Returns a numeric value. 
 * @author Shawn Seley (shawnse@aol.com) 
 * @version 1.1, October 4, 2002 
 */
function SymRound(theNumber) {
    // The decimal-place-rounding foundation of this code was based on Sierra Bufe's (sierra@brighterfusion.com) RoundIt().
    var x              = 0;
    var rounded_down   = 0;

    var numDigits      = 0;  // rounds to the nearest whole integer unless a decimal place is specified
        if(ArrayLen(Arguments) GTE 2) numDigits = Arguments[2];

	// multiply by 10 to the power of the number of digits to be preserved, and remove its sign
	x = Abs(theNumber * (10 ^ numDigits));
	rounded_down = Int(x);

	// round off to an integer, checking for the exception first
	if((x -rounded_down EQ 0.5) and (not rounded_down mod 2)) {
		// number is an exact-middle "5" AND rounding down is the closest *even* result
		x = rounded_down;
	} else x = Round(Val(x));  // otherwise round normally

	// divide by 10 to the power of the number of digits to be preserved, and restore the number's sign
	return x / (10 ^ numDigits) * Sgn(theNumber);

}
</cfscript>

<cfscript>
/**
 * Returns the hyberbolic tangent of an angle.
 * 
 * @param x 	 Any angle measured in radians. 
 * @return Returns a numeric value. 
 * @author Joel Cox (jlcox@goodyear.com) 
 * @version 1, October 9, 2001 
 */
function Tanh(x){
  var tmp = Exp(2*x);
  return((tmp-1)/(tmp+1));
}
</cfscript>

<cfscript>
/**
 * Restores significant trailing zeroes which may have been omitted during calculations.
 * 
 * @param inNum 	 The number. (Required)
 * @param places 	 Number of significant digits. (Required)
 * @return Returns a number. 
 * @author Shawn Seley (shawnse@aol.com) 
 * @version 1, September 27, 2002 
 */
function TrailingZeroes(inNum, decPlaces){
	var existing_dec_places  = 0;

	if(decPlaces GT 0) {
		if(inNum contains "."){
			existing_dec_places = Len(ListGetAt(inNum, 2, "."));
			if(existing_dec_places LT decPlaces){
				return inNum & RepeatString("0", decPlaces - existing_dec_places);
			}
		} else {
			// was shortened to an integer without a decimal point
			return inNum & "." & RepeatString("0", decPlaces - existing_dec_places);
		}
	}
	return inNum;
}
</cfscript>

<cfscript>
/**
 * Cuts a number to a certain amount of decimal places without rounding.
 * 
 * @param input 	 Decimal number. (Required)
 * @param decimals 	 Number of decimals to the right of the period. Defaults to 2. (Optional)
 * @return Returns a number. 
 * @author Tony Monast (tony@ckm9.com) 
 * @version 1, June 15, 2006 
 */
function truncNumber(input) {
	var decimals = 2;
	var regex = "";
	var st = "";
	if(arrayLen(arguments) EQ 2) decimals = arguments[2];
	regex = "^\d*(.\d{1," & decimals & "})?";
	st = reFind(regex,input,1,true);
	return mid(input,st.pos[1],st.len[1]);
}
</cfscript>

<cfscript>
/**
 * Decodes a 2's complement base 10 (decimal) value into an unencoded base 10 value.
 * 
 * @param num 	 2's complement you want to convert back to its original decimal value.. (Required)
 * @param bits 	 Number of bits in the original decimal value. (Optional)
 * @return Returns a numeric value. 
 * @author Stephen Rittler (scrittler@etechsolutions.com) 
 * @version 1, May 31, 2002 
 */
function TwosCompToDec(num, bits){
	var isNegative = 0;
	var varBase10 = num;
	var varBase2 = 0;
	var varBase2Rev = "";  
	var strLen=0;
  
	// capture whether or not the input value is negative
	if (varBase10 LT 0) {
		isNegative = 1;
		varBase10 = abs(varBase10);
	}
	
	// convert to base 2
	varBase2 = NumberFormat(Right(FormatBaseN(varBase10,2), bits), RepeatString("0", bits));
	
	// switch sign bit to 0
	varBase2 = "0" & Right(varBase2, (bits - 1));

	if(isNegative) {
		// if the number was negative, we have to invert the value and add one
		
		// invert; swap 0 for 1 and 1 for 0
		strLen = len(varBase2);
		for(i=1; i LE bits; i=i+1){
			if(Mid(varBase2, i, 1) eq 0) {
				varBase2Rev = varBase2Rev & 1;
			} else {
				varBase2Rev = varBase2Rev & 0;
			}
		}

		// convert back to base 10
		varBase10 = InputBaseN(varBase2Rev, 2);
		
		//add 1
		return (varBase10 + 1);

	} else {
		// if number was positive, convert straight back to base 10
		return InputBaseN(varBase2, 2);
	}
}
</cfscript>

<cfscript>
/**
 * Returns the population variance for a set of numeric values.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a numeric value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, October 16, 2001 
 */
function VariancePop(values)
{
  Var MyArray = 0;
  Var NumValues = 0;
  Var xBar = 0;
  Var SumxBar = 0;  
  Var i=0;
  if (IsArray(values)){
     MyArray = values;
    }
  else {
     MyArray = ListToArray(values);
    }
  NumValues = ArrayLen(MyArray);
  xBar = ArrayAvg(MyArray);
  for (i=1; i LTE NumValues; i=i+1) {
    SumxBar = SumxBar + ((MyArray[i] - xBar)*(MyArray[i] - xBar));
    }
  Return SumxBar/NumValues;
}
</cfscript>

<cfscript>
/**
 * Returns the sample variance for a set of numeric values.
 * 
 * @param values 	 Comma delimited list or one dimensional array of numeric values. 
 * @return Returns a numeric value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, September 7, 2001 
 */
function VarianceSamp(values)
{
  Var MyArray = 0;
  Var NumValues = 0;
  Var xBar = 0;
  Var SumxBar = 0;  
  Var i=0;
  if (IsArray(values)){
     MyArray = values;
    }
  else {
     MyArray = ListToArray(values);
    }    
  NumValues = ArrayLen(MyArray);
  xBar = ArrayAvg(MyArray);
  for (i=1; i LTE NumValues; i=i+1) {
    SumxBar = SumxBar + (MyArray[i] - xBar)*(MyArray[i] - xBar);
    }
  Return SumxBar/(NumValues-1);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of a cone.
 * 
 * @param radius 	 1/2 the diameter of the base of the cone. 
 * @param height 	 The height at the center of the cone. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1, July 18, 2001 
 */
function VolCone(radius, height)
{
  Return ((Pi() * radius^2 * height)/3);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of a cube.
 * 
 * @param side 	 The length of any one side of the cube. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolCube(Side)
{
  Return (side^3);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of a cylinder.
 * 
 * @param radius 	 1/2 the diameter of a cross-section of the cylinder. 
 * @param height 	 The height of the cylinder. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolCylinder(radius, height)
{
  Return (PI() * radius^2 * height);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of an ellipsoid.
 * 
 * @param radius1 	 1/2 the diameter of the first axis. 
 * @param radius2 	 1/2 the diameter of the second axis. 
 * @param radius3 	 1/2 the diameter of the third axis. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolEllipsoid(radius1, radius2, radius3)
{
  Return ((4/3) * PI() * radius1 *radius2 * radius3);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of a pyramid.
 * 
 * @param base 	 The length of the base of the pyramid. 
 * @param height 	 The height of the pyramid. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolPyramid(base, height)
{
  Return ((base * height)/3);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of a rectangular prism.
 * 
 * @param length 	 The length of the prism. 
 * @param width 	 The width of the prism. 
 * @param height 	 The height of the prism. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolRectangularPrism(length, width, height)
{
  Return (length * width * height);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of a sphere.
 * 
 * @param radius 	 1/2 the diameter of the sphere. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolSphere(radius)
{
  Return ((4/3) * PI() * radius^3);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of a torus.
 * 
 * @param MajorRadius 	 1/2 the diameter of the large circle. 
 * @param MinorRadius 	             1/2 the diameter of a cross-section. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolTorus(MajorRadius, MinorRadius)
{
  Return (2 * Pi()^2 * MajorRadius * MinorRadius^2);
}
</cfscript>

<cfscript>
/**
 * Calculates the volume of a triangular prism.
 * 
 * @param length 	 The length of the prism. 
 * @param width 	 The width of the prism. 
 * @param height 	 The height of the prism. 
 * @return Returns a simple value. 
 * @author Rob Brooks-Bilson (rbils@amkor.com) 
 * @version 1.0, July 18, 2001 
 */
function VolTriangularPrism(length, width, height)
{
  Return (0.5 * length * width * height);
}
</cfscript>

<cfscript>
/**
 * Returns Weight Watchers Winning Points from calories, fat, and dietary fiber.
 * 
 * @param calories 	 Total number of calories (kcal) . 
 * @param fat 	 Total number of fat grams. 
 * @param fiber 	 Total grams of fiber. 
 * @return Returns a number. 
 * @author William Steiner (williams@hkusa.com) 
 * @version 1, January 16, 2002 
 */
function WeightWatchersPoints(calories,fat,fiber) {
  if (fiber gte 4)
    fiber = 4;
  return Int((calories - (fiber * 10) ) / 50 + fat / 12 + 0.5);
}
</cfscript>

<cfscript>
/**
 * Returns zero if the value passed into ZeroMinimum() is less than zero.
 * 
 * @param x 	 Value you want to ensure is greater than or equal to zero. 
 * @return Returns a numeric value. 
 * @author Alan McCollough (amccollough@anmc.org) 
 * @version 1, January 10, 2002 
 */
function ZeroMinimum(x){      
  return max(x,0);
}
</cfscript>






