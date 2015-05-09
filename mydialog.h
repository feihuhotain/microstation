/*----------------------------------------------------------------------+
|                                                                       |
|   Current Revision:                                                   |
|    Workfile:f:\projects\mydialog.h
|    Revision:
|                                                                       |
+----------------------------------------------------------------------*/
/*----------------------------------------------------------------------+
|                                                                       |
|                                                                       |
|                                                                       |
|									|
|									|
|									|
|									|
|									|
|                                                                       |
+----------------------------------------------------------------------*/
#include    <msdefs.h>
#include    <basetype.h>

typedef struct d_params {
	
	float PIStation;
	float PIElevation;
	float PCStation;
	float PCElevation;
	float PTStation;
	float PTElevation;
	float HLStation;
	float HLElevation;
	float UNStation;
	float UNElevation;
	float BGrade;
	float EGrade;
	float Length;
	
} d_Params;

#define HOOKITEMID_PushButton               3
#define PUSHBUTTONID_QUIT                   33
#define DIALOGID_Untitled1            	    1
#define PUSHBTNID_Button              	    200000001
#define PUSHBTNID_CALC             			200000003
#define HOOKITEMID_CALC               	    4
#define PUSHBUTTONID_CALC             	    44

#define TEXTID_PIStation                    200000112
#define TEXTID_PTStation                    200000111
#define TEXTID_PIElevation             	    200000002
#define TEXTID_UNElevation                	200000010
#define TEXTID_UNStation                	200000009
#define TEXTID_Length                	    200000013
#define TEXTID_HLStation                 	200000007
#define TEXTID_PCStation                 	200000005
#define TEXTID_PCElevation                 	200000006
#define TEXTID_HLElevation                 	200000008
#define TEXTID_EGrade                 	    200000012
#define TEXTID_BGrade                 	    200000011
#define TEXTID_PTElevation                  200000014

#define SYNONYMID_Length             	        1
#define SYNONYMID_PIElevation                   2
#define SYNONYMID_UNElevation             	    2
#define SYNONYMID_UNStation             	    1
/* Macro: SYNONYMID_PTStation is possibly not being used */
#define SYNONYMID_PTStation               	    1
#define SYNONYMID_EGrade              	    1
#define SYNONYMID_BGrade              	    1
#define SYNONYMID_HLStation              	    1
#define SYNONYMID_PCStation              	    1
#define SYNONYMID_PCElevation              	    2
#define SYNONYMID_HLElevation              	    2
#define SYNONYMID_PIElevation                  	    2
#define SYNONYMID_PIStation                  	    1
/* Macro: SYNONYMID_PTElevation is possibly not being used */
#define SYNONYMID_PTElevation               200000015
#define SYNONYMID_200000016           	    200000016
#define SYNONYMID_200000018           	    200000018
#define MACROVAL_4                    	    4
