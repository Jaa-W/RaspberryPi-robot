

/*
 * Include Files
 *
 */
#if defined(MATLAB_MEX_FILE)
#include "tmwtypes.h"
#include "simstruc_types.h"
#else
#include "rtwtypes.h"
#endif
#include "LSM303_bus.h"

/* %%%-SFUNWIZ_wrapper_includes_Changes_BEGIN --- EDIT HERE TO _END */
#ifndef MATLAB_MEX_FILE
	#include <Arduino.h>
	#include "Wire/Wire.h"

	#define MAG_ADDRESS             0x1E
	#define ACC_ADDRESS             0x19

#endif
/* %%%-SFUNWIZ_wrapper_includes_Changes_END --- EDIT HERE TO _BEGIN */
#define u_width 
#define y_width 1
/*
 * Create external references here.  
 *
 */
/* %%%-SFUNWIZ_wrapper_externs_Changes_BEGIN --- EDIT HERE TO _END */
 
/* %%%-SFUNWIZ_wrapper_externs_Changes_END --- EDIT HERE TO _BEGIN */

/*
 * Output functions
 *
 */
extern "C" void LSM303_Outputs_wrapper(accel *Acceleration,
			compass *Compass,
			real_T *Heading,
			const real_T *xD,
			const real_T  *sampletime, const int_T  p_width0,
			const boolean_T  *debug, const int_T  p_width1,
			const real_T  *MinCompassX, const int_T  p_width2,
			const real_T  *MaxCompassX, const int_T  p_width3,
			const real_T  *MinCompassY, const int_T  p_width4,
			const real_T  *MaxCompassY, const int_T  p_width5,
			const real_T  *MinCompassZ, const int_T  p_width6,
			const boolean_T  *MaxCompassZ, const int_T  p_width7)
{
/* %%%-SFUNWIZ_wrapper_Outputs_Changes_BEGIN --- EDIT HERE TO _END */
if (xD[0] == 1) {
    #ifndef MATLAB_MEX_FILE
      
      Wire.beginTransmission(ACC_ADDRESS);
	  // assert the MSB of the address to get the accelerometer
	  // to do slave-transmit subaddress updating.
	  Wire.write(0xA8);
	  Wire.endTransmission();
	  Wire.requestFrom(ACC_ADDRESS, 6);
      
      byte xla = Wire.read();
      byte xha = Wire.read();
      byte yla = Wire.read();
      byte yha = Wire.read();
      byte zla = Wire.read();
      byte zha = Wire.read();
	
      // combine high and low bytes, then shift right to discard lowest 4 bits (which are meaningless)
      // GCC performs an arithmetic right shift for signed negative numbers, but this code will not work
      // if you port it to a compiler that does a logical right shift instead.
      Acceleration[0].x = ((int16_t)(xha << 8 | xla)) >> 4;
      Acceleration[0].y = ((int16_t)(yha << 8 | yla)) >> 4;
      Acceleration[0].z = ((int16_t)(zha << 8 | zla)) >> 4;
      
      if(debug[0]) {
        Serial.print("AX: ");
        Serial.print((int)Acceleration[0].x);
        Serial.print(" AY: ");
        Serial.print((int)Acceleration[0].y);
        Serial.print(" AZ: ");
        Serial.println((int)Acceleration[0].z);
      }
        
      // Try averaging 5 readings
      int32_t avgX=0;
      int32_t avgY=0;
      
      for (int i =0; i< 5; i++) 
      {
            Wire.beginTransmission(MAG_ADDRESS);
            // assert the MSB of the address to get the accelerometer
            // to do slave-transmit subaddress updating.
            Wire.write(0x03);
            Wire.endTransmission();
            Wire.requestFrom(MAG_ADDRESS, 6);
      
            byte xhm = Wire.read();
            byte xlm = Wire.read();
            byte zhm = Wire.read();
            byte zlm = Wire.read();
            byte yhm = Wire.read();
            byte ylm = Wire.read();
      
            // combine high and low bytes, then shift right to discard lowest 4 bits (which are meaningless)
            // GCC performs an arithmetic right shift for signed negative numbers, but this code will not work
            // if you port it to a compiler that does a logical right shift instead.
            avgX +=((int16_t)(xhm << 8 | xlm));
            avgY +=((int16_t)(yhm << 8 | ylm)); 
            Compass[0].z = ((int16_t)(zhm << 8 | zlm));
      }
      
      Compass[0].x = avgX/5.0;
      Compass[0].y = avgY/5.0;
      
      float x_scaled = 2.0*(float)(Compass[0].x - MinCompassX[0])/(MaxCompassX[0] - MinCompassX[0]) -1.0;
      float y_scaled = 2.0*(float)(Compass[0].y - MinCompassY[0])/(MaxCompassY[0] - MinCompassY[0]) -1.0;
      
      float heading = atan2(y_scaled, x_scaled)*180/3.14;
      if (heading < 0) heading += 360;
      
      Heading[0] = heading;
      
      if(debug[0]) {
        Serial.print("CX: ");
        Serial.print((int)Compass[0].x);
        Serial.print(" CY: ");
        Serial.print((int)Compass[0].y);
        Serial.print(" CZ: ");
        Serial.print((int)Compass[0].z);
        Serial.print(" Heading:");
        Serial.println((float)Heading[0]);
      }
    #endif
}
/* %%%-SFUNWIZ_wrapper_Outputs_Changes_END --- EDIT HERE TO _BEGIN */
}

/*
  * Updates function
  *
  */
extern "C" void LSM303_Update_wrapper(accel *Acceleration,
			compass *Compass,
			const real_T *Heading,
			real_T *xD,
			const real_T  *sampletime,  const int_T  p_width0,
			const boolean_T  *debug,  const int_T  p_width1,
			const real_T  *MinCompassX,  const int_T  p_width2,
			const real_T  *MaxCompassX,  const int_T  p_width3,
			const real_T  *MinCompassY,  const int_T  p_width4,
			const real_T  *MaxCompassY,  const int_T  p_width5,
			const real_T  *MinCompassZ,  const int_T  p_width6,
			const boolean_T  *MaxCompassZ,  const int_T  p_width7)
{
  /* %%%-SFUNWIZ_wrapper_Update_Changes_BEGIN --- EDIT HERE TO _END */
if (xD[0] == 0) {
    #ifndef MATLAB_MEX_FILE
        #ifndef WIRE_LIB
            Wire.begin();
            #define WIRE_LIB 1
        #endif
        
         if (debug[0]) {
           Serial.begin(9600);
         }
        
        //Accelerometer
        Wire.beginTransmission(ACC_ADDRESS);
        Wire.write(0x20);
        Wire.write(0x27);
        Wire.endTransmission();
        
        //High resolution
        Wire.beginTransmission(ACC_ADDRESS);
        Wire.write(0x23);
        Wire.write(0x08);
        Wire.endTransmission();
        
        //Compass
        Wire.beginTransmission(MAG_ADDRESS);
        Wire.write(0x02);
        Wire.write((uint8_t)0);
        Wire.endTransmission();
        
        //+-2.5 Gauss
        Wire.beginTransmission(MAG_ADDRESS);
        Wire.write(0x01);
        Wire.write(0x60);
        Wire.endTransmission();
        // 220Hz
        Wire.beginTransmission(MAG_ADDRESS);
        Wire.write((uint8_t)0);
        Wire.write(0x1C);
        Wire.endTransmission();
        
        
    #endif
    xD[0] = 1;
}
/* %%%-SFUNWIZ_wrapper_Update_Changes_END --- EDIT HERE TO _BEGIN */
}
