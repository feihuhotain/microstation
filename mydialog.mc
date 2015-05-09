
#include <mselems.h>
#include <msdefs.h>
#include <global.h>
#include <scanner.h>
#include <msinputq.h>
#include <userfnc.h>
#include <mdl.h>
#include <cexpr.h>
#include <rscdefs.h>
#include <dlogitem.h>
#include <dlogbox.h>
#include <tcb.h>
#include <cmdlist.h>
#include <refernce.h>
#include <stdio.h>



#include "mydialog.h"
#include "mydiatxt.h"
#pragma noAnsiDeclaration ignore

Private int mydialog_pushButtonHook();

Private int loadDefaults (void);

Private DialogHookInfo uHooks[]=
{
	{HOOKITEMID_PushButton, mydialog_pushButtonHook},
	{HOOKITEMID_CALC, mydialog_pushButtonHook},
};

Public d_Params params;

/* **********       pltpnt_pushButtonHook   ************ */
Private int  mydialog_pushButtonHook (DialogItemMessage   *dimP)
    {
    char        keyin[100];
    DialogItem  *diP;

    dimP->msgUnderstood = TRUE;

    switch (dimP->messageType)
       {
	case DITEM_MESSAGE_BUTTON:
         {
            switch (dimP->dialogItemP->rawItemP->itemHookArg)
           {
                
               
                case PUSHBUTTONID_QUIT:
                    {
                    /* --- close dialog box forcing command to unload --- */
                    mdlDialog_closeCommandQueue (dimP->db);
                    break;
                    }
				case PUSHBUTTONID_CALC:
					{
					CalcValues();
					mdlDialog_itemsSynch (dimP->db);
					break;
					}
			}
          }
	default:
            {
	    dimP->msgUnderstood = FALSE;
	    break;
            }
	
    }
return(0);
}
Private int CalcValues(void)
{	
	float PIS,PCS,PTS,Length,HLS,UNS;
	float BGrade,EGrade,PIE,PCE,PTE,HLE,UNE;
	
		PIS=params.PIStation;
		PIE=params.PIElevation;
		BGrade=params.BGrade;
		EGrade=params.EGrade;
		Length=params.Length;
		UNS=params.UNStation;
		
		PCS=PIS-.5*Length;
		PCE=PIE-(PIS-PCS)*BGrade/100;
		PTS=PCS+Length;
		HLS=-BGrade/((EGrade-BGrade)/Length)+PCS;
		HLE=PIE-(Length*BGrade*EGrade)/(200*(EGrade-BGrade));
		UNE=((EGrade-BGrade)/(Length*200))*(UNS-PCS)*(UNS-PCS)+(BGrade/100)*(UNS-PCS)+PCE;
		PTE=((EGrade-BGrade)/(Length*200))*(PTS-PCS)*(PTS-PCS)+(BGrade/100)*(PTS-PCS)+PCE;

		
		params.PCStation=PCS;
		params.PCElevation=PCE;
		params.PTStation=PTS;
		params.PTElevation=PTE;
		params.HLStation=HLS;
		params.HLElevation=HLE;
		params.UNElevation=UNE;
	
	return(0);
}


Private int loadDefaults(void)
{
	params.PCStation=2;
	params.PCElevation=33;
	return(0);
}

/*  *******       pltpnt_dialogBoxHook ********** */
Private int  pltpnt_dialogBoxHook (DialogItemMessage  *dimP)   /* => a ptr to a dialog message */
    {
    dimP->msgUnderstood = TRUE;
    switch (dimP->messageType)
        {
	case DITEM_MESSAGE_DESTROY:
     {
            /* --- unload this mdl task when the Dialog is closed --- */
	    mdlDialog_cmdNumberQueue (FALSE, CMD_MDL_UNLOAD,
				      mdlSystem_getCurrTaskID(), TRUE);
	    break;
     }
	case DITEM_MESSAGE_STATECHANGED:
	case DITEM_MESSAGE_CREATE:
		{
			loadDefaults();
			break;
		}

	case DITEM_MESSAGE_SYNCHRONIZE:
	{
		loadDefaults();
		break;
	}

	default:
            {
	    dimP->msgUnderstood = FALSE;
	    break;
            }
        }
return(0);
 }









/* **************** MAIN ****************************/
int main (void)
{
	RscFileHandle rfHandle;
	char  *setP;
	mdlDialog_hookPublish (sizeof(uHooks)/sizeof(DialogHookInfo),uHooks);
	mdlResource_openFile (&rfHandle, NULL, FALSE);
	setP=mdlCExpression_initializeSet(VISIBILITY_DIALOG_BOX | VISIBILITY_DEBUGGER,0,FALSE);
	mdlDialog_publishComplexVariable (setP,"d_params","params", &params);
	loadDefaults();
	mdlDialog_open(NULL,DIALOGID_Untitled1);
	return SUCCESS;
}
