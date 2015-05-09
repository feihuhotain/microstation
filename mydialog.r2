#include <rscdefs.h>
#include <cmdclass.h>
#include <dlogbox.h>
#include <dlogids.h>
#include <keys.h>

#include "mydiatxt.h"
#include "mydialog.h"
/*----------------------------------------------------------------------+
|                                                                       |
|   Untitled1 Dialog Box                                        |
|                                                                       |
+----------------------------------------------------------------------*/
DialogBoxRsc DIALOGID_Untitled1 =
    {
    DIALOGATTR_DEFAULT,
    55.33*XC, 26.00*YC,
    NOHELP, MHELP, NOHOOK, NOPARENTID,
    TXT_DBOX_UNTITLED1,
{
{{ 4.33*XC, 4.92*YC, 9.00*XC,       0}, Text, TEXTID_PIStation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{14.83*XC, 4.92*YC, 9.00*XC,       0}, Text, TEXTID_PIElevation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{31.00*XC, 22.92*YC,12.00*XC,       0}, PushButton, PUSHBTNID_Button, ON, 0, "", ""},
{{ 10.67*XC, 23.00*YC,12.00*XC,       0}, PushButton, PUSHBTNID_CALC, ON, 0, "", ""},
{{ 3.83*XC, 2.67*YC, 2.33*XC, 1.00*YC}, Label, 0, ON, 0, TXT_LABL_LABEL, ""},
{{ 1.67*XC, 1.67*YC,25.00*XC,20.92*YC}, GroupBox, 0, ON, 0, TXT_GBOX_KNOWNS, ""},
{{28.17*XC, 1.58*YC,25.00*XC,21.17*YC}, GroupBox, 0, ON, 0, TXT_GBOX_GROUPBOX, ""},
{{31.00*XC, 3.08*YC, 2.33*XC, 1.00*YC}, Label, 0, ON, 0, TXT_LABL_PI, ""},
{{41.17*XC, 5.17*YC, 9.00*XC,       0}, Text, TEXTID_PTElevation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{30.83*XC, 5.17*YC, 9.00*XC,       0}, Text, TEXTID_PTStation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{31.00*XC, 6.92*YC, 2.33*XC, 1.00*YC}, Label, 0, ON, 0, TXT_LABL_PC, ""},
{{30.83*XC, 9.33*YC, 9.00*XC,       0}, Text, TEXTID_PCStation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{41.17*XC, 9.33*YC, 9.00*XC,       0}, Text, TEXTID_PCElevation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{29.33*XC,11.50*YC, 8.33*XC, 1.17*YC}, Label, 0, ON, 0, TXT_LABL_HIGHLOW, ""},
{{30.83*XC,14.25*YC, 9.00*XC,       0}, Text, TEXTID_HLStation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{41.00*XC,14.25*YC, 9.00*XC,       0}, Text, TEXTID_HLElevation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{30.83*XC,19.17*YC, 9.00*XC,       0}, Text, TEXTID_UNStation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{41.00*XC,19.17*YC, 9.00*XC,       0}, Text, TEXTID_UNElevation, ON, TEXT_MASK_LABELABOVE, "", ""},
{{29.83*XC,16.67*YC, 8.50*XC, 1.00*YC}, Label, 0, ON, 0, TXT_LABL_UNKNOWN, ""},
{{ 4.33*XC, 8.50*YC, 9.00*XC,       0}, Text, TEXTID_BGrade, ON, TEXT_MASK_LABELABOVE, "", ""},
{{ 4.33*XC,12.00*YC, 9.00*XC,       0}, Text, TEXTID_EGrade, ON, TEXT_MASK_LABELABOVE, "", ""},
{{ 4.33*XC,15.67*YC, 9.00*XC,       0}, Text, TEXTID_Length, ON, TEXT_MASK_LABELABOVE, "", ""},
}
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   Text1 Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_PIStation =
    {
    NOCMD, LCMD, SYNONYMID_PIStation,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%f", "%f",
    "0", "100000", NOMASK,
    TEXT_NOCONCAT,
    TXT_DTXT_PIStation,
    "params.PIStation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   PIElevation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_PIElevation =
    {
    NOCMD, LCMD, SYNONYMID_PIElevation,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%lf", "%lf",
    "0", "1000000", NOMASK,
    TEXT_NOCONCAT,
    TXT_DTXT_PIElevation,
    "params.PIElevation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   Quit PushButton Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_PushButtonRsc PUSHBTNID_Button =
    {
    CANCEL_BUTTON, NOHELP, LHELP,
    HOOKITEMID_PushButton, 33, NOCMD, LCMD,
    "",
    TXT_PBTN_QUIT
    };
/*----------------------------------------------------------------------+
|                                                                       |
|    Synonyms Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_SynonymsRsc SYNONYMID_PIStation =
    {
        {
    	{Text, TEXTID_PIStation},
        }
    };
/*----------------------------------------------------------------------+
|                                                                       |
|    Synonyms Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_SynonymsRsc SYNONYMID_PIElevation =
    {
        {
    	{Text, TEXTID_PIElevation},
        }
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   Calc PushButton Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_PushButtonRsc PUSHBTNID_CALC =
    {
    PBUTATTR_ALIGNCENTER, NOHELP, LHELP,
    HOOKITEMID_CALC, 44, NOCMD, LCMD,
    "",
    TXT_PBTN_CALC
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   PTElevation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_PTElevation =
    {
    NOCMD, LCMD, SYNONYMID_200000016,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%lf", "%lf",
    "0", "1000000", NOMASK,
    TEXT_READONLY,
    TXT_DTXT_PTElevation,
    "params.PTElevation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   PTStation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_PTStation =
    {
    NOCMD, LCMD, SYNONYMID_200000018,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%f", "%f",
    "0", "1000000", NOMASK,
    TEXT_READONLY,
    TXT_DTXT_PTStation,
    "params.PTStation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   PCStation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_PCStation =
    {
    NOCMD, LCMD, SYNONYMID_PCStation,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%f", "%f",
    "0", "1000000", NOMASK,
    TEXT_READONLY,
    TXT_DTXT_PCStation,
    "params.PCStation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   PCElevation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_PCElevation =
    {
    NOCMD, LCMD, SYNONYMID_PCElevation,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%lf", "%lf",
    "0", "1000000", NOMASK,
    TEXT_READONLY,
    TXT_DTXT_PCElevation,
    "params.PCElevation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   HLStation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_HLStation =
    {
    NOCMD, LCMD, SYNONYMID_HLStation,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%f", "%f",
    "0", "1000000", NOMASK,
    TEXT_READONLY,
    TXT_DTXT_HLStation,
    "params.HLStation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   HLElevation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_HLElevation =
    {
    NOCMD, LCMD, SYNONYMID_HLElevation,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%lf", "%lf",
    "0", "1000000", NOMASK,
    TEXT_READONLY,
    TXT_DTXT_HLElevation,
    "params.HLElevation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   UNStation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_UNStation =
    {
    NOCMD, LCMD, SYNONYMID_UNStation,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%f", "%f",
    "0", "1000000", NOMASK,
    TEXT_NOCONCAT,
    TXT_DTXT_UNStation,
    "params.UNStation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   UNElevation Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_UNElevation =
    {
    NOCMD, LCMD, SYNONYMID_UNElevation,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%lf", "%lf",
    "0", "1000000", NOMASK,
    TEXT_READONLY,
    TXT_DTXT_UNElevation,
    "params.UNElevation"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   BGrade Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_BGrade =
    {
    NOCMD, LCMD, SYNONYMID_BGrade,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%lf", "%lf",
    "-1000000", "1000000", NOMASK,
    TEXT_NOCONCAT,
    TXT_DTXT_BGrade,
    "params.BGrade"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   EGrade Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_EGrade =
    {
    NOCMD, LCMD, SYNONYMID_EGrade,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%lf", "%lf",
    "-1000000", "1000000", NOMASK,
    TEXT_NOCONCAT,
    TXT_DTXT_EGrade,
    "params.EGrade"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|   Length Text Item Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_TextRsc TEXTID_Length =
    {
    NOCMD, LCMD, SYNONYMID_Length,
    NOHELP, LHELP, NOHOOK,
    NOARG, 20, "%f", "%f",
    "0", "1000000", NOMASK,
    TEXT_NOCONCAT,
    TXT_DTXT_Length,
    "params.Length"
    };
/*----------------------------------------------------------------------+
|                                                                       |
|    Synonyms Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_SynonymsRsc SYNONYMID_200000016 =
    {
        {
    	{Text, TEXTID_PTElevation},
        }
    };
/*----------------------------------------------------------------------+
|                                                                       |
|    Synonyms Resource 			    	|
|                                                                       |
+----------------------------------------------------------------------*/
DItem_SynonymsRsc SYNONYMID_200000018 =
    {
        {
    	{Text, TEXTID_PTStation},
        }
    };
