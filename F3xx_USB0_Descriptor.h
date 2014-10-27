//-----------------------------------------------------------------------------
// F3xx_USB0_Descriptor.h
//-----------------------------------------------------------------------------
// Copyright 2010 Silicon Laboratories, Inc.
// http://www.silabs.com
//
// Program Description:
//
// Source file for USB firmware. Includes descriptor data.
//
//
// How To Test:    See Readme.txt
//
//
// FID
// Target:         C8051F32x/C8051F340
// Tool chain:     Keil / Raisonance
//                 Silicon Laboratories IDE version 2.6
// Command Line:   See Readme.txt
// Project Name:   F3xx_MouseExample
//
// Release 1.2 (ES)
//    -Added support for Raisonance
//    -No change to this file
//    -02 APR 2010
// Release 1.1
//    -Minor code comment changes
//    -16 NOV 2006
// Release 1.0
//    -Initial Revision (PD)
//    -07 DEC 2005
//

#ifndef  _USB_DESC_H_
#define  _USB_DESC_H_

//------------------------------------------
// Standard Device Descriptor Type Defintion
//------------------------------------------
typedef struct device_descriptor
{
   U8 bLength;              // Size of this Descriptor in Bytes
   U8 bDescriptorType;      // Descriptor Type (=1)
   UU16 bcdUSB;                        // USB Spec Release Number in BCD
   U8 bDeviceClass;         // Device Class Code
   U8 bDeviceSubClass;      // Device Subclass Code
   U8 bDeviceProtocol;      // Device Protocol Code
   U8 bMaxPacketSize0;      // Maximum Packet Size for EP0
   UU16 idVendor;                      // Vendor ID
   UU16 idProduct;                     // Product ID
   UU16 bcdDevice;                     // Device Release Number in BCD
   U8 iManufacturer;        // Index of String Desc for Manufacturer
   U8 iProduct;             // Index of String Desc for Product
   U8 iSerialNumber;        // Index of String Desc for SerNo
   U8 bNumConfigurations;   // Number of possible Configurations
} device_descriptor;                   // End of Device Descriptor Type

//--------------------------------------------------
// Standard Configuration Descriptor Type Definition
//--------------------------------------------------
typedef struct configuration_descriptor
{
   U8 bLength;              // Size of this Descriptor in Bytes
   U8 bDescriptorType;      // Descriptor Type (=2)
   UU16 wTotalLength;                  // Total Length of Data for this Conf
   U8 bNumInterfaces;       // No of Interfaces supported by this
                                       // Conf
   U8 bConfigurationValue;  // Designator Value for *this*
                                       // Configuration
   U8 iConfiguration;       // Index of String Desc for this Conf
   U8 bmAttributes;         // Configuration Characteristics (see below)
   U8 bMaxPower;            // Max. Power Consumption in this
                                       // Conf (*2mA)
} configuration_descriptor;            // End of Configuration Descriptor Type

//----------------------------------------------
// Standard Interface Descriptor Type Definition
//----------------------------------------------
typedef struct interface_descriptor
{
   U8 bLength;              // Size of this Descriptor in Bytes
   U8 bDescriptorType;      // Descriptor Type (=4)
   U8 bInterfaceNumber;     // Number of *this* Interface (0..)
   U8 bAlternateSetting;    // Alternative for this Interface (if any)
   U8 bNumEndpoints;        // No of EPs used by this IF (excl. EP0)
   U8 bInterfaceClass;      // Interface Class Code
   U8 bInterfaceSubClass;   // Interface Subclass Code
   U8 bInterfaceProtocol;   // Interface Protocol Code
   U8 iInterface;           // Index of String Desc for this Interface
} interface_descriptor;                // End of Interface Descriptor Type

//------------------------------------------
// Standard Class Descriptor Type Definition
//------------------------------------------
typedef struct class_descriptor
{
   U8 bLength;              // Size of this Descriptor in Bytes (=9)
   U8 bDescriptorType;      // Descriptor Type (HID=0x21)
   UU16 bcdHID;                        // HID Class Specification
                                       // release number (=1.01)
   U8 bCountryCode;         // Localized country code
   U8 bNumDescriptors;      // Number of class descriptors to follow
   U8 bReportDescriptorType;// Report descriptor type (HID=0x22)
   unsigned int wItemLength;           // Total length of report descriptor table
} class_descriptor;                    // End of Class Descriptor Type

//---------------------------------------------
// Standard Endpoint Descriptor Type Definition
//---------------------------------------------
typedef struct endpoint_descriptor
{
   U8 bLength;              // Size of this Descriptor in Bytes
   U8 bDescriptorType;      // Descriptor Type (=5)
   U8 bEndpointAddress;     // Endpoint Address (Number + Direction)
   U8 bmAttributes;         // Endpoint Attributes (Transfer Type)
   UU16 wMaxPacketSize;                // Max. Endpoint Packet Size
   U8 bInterval;            // Polling Interval (Interrupt) ms
} endpoint_descriptor;                 // End of Endpoint Descriptor Type

//---------------------------------------------
// HID Configuration Descriptor Type Definition
//---------------------------------------------
// From "USB Device Class Definition for Human Interface Devices (HID)".
// Section 7.1:
// "When a Get_Descriptor(Configuration) request is issued,
// it returns the Configuration descriptor, all Interface descriptors,
// all Endpoint descriptors, and the HID descriptor for each interface."
typedef struct hid_configuration_descriptor
{
   configuration_descriptor   hid_configuration_descriptor;
   interface_descriptor       hid_interface_descriptor;
   class_descriptor        hid_descriptor;
   endpoint_descriptor     hid_endpoint_in_descriptor;
   endpoint_descriptor     hid_endpoint_out_descriptor;
}hid_configuration_descriptor;

#define HID_REPORT_DESCRIPTOR_SIZE 0x0020
#define HID_REPORT_DESCRIPTOR_SIZE_LE 0x2000



typedef U8 hid_report_descriptor[HID_REPORT_DESCRIPTOR_SIZE];

//-----------------------------
// SETUP Packet Type Definition
//-----------------------------
typedef struct Setup_Buffer
{
   U8    bmRequestType;       // Request recipient, type, and dir.
   U8    bRequest;            // Specific standard request number
   UU16  wValue;              // varies according to request
   UU16  wIndex;              // varies according to request
   UU16  wLength;             // Number of bytes to transfer
} Setup_Buffer;                        // End of SETUP Packet Type

#endif  /* _USB_DESC_H_ */