/*INSERTION_TRADOIL*/
/**********************************************************************************************************************/
/* !Layer           : MCAL                                                                                            */
/* !Component       : PWD                                                                                             */
/* !Description     : Code For PWD Component                                                                          */
/*                                                                                                                    */
/* !File            : PWD_DEF_C.tpl                                                                                   */
/* !Description     : Configuration files                                                                             */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
/*                                                                                                                    */
/* Coding language  : OIL                                                                                             */
/*                                                                                                                    */
/* COPYRIGHT VALEO all rights reserved                                                                                */
/**********************************************************************************************************************/
/* Dimension Informations
 * %PCMS_HEADER_SUBSTITUTION_START:%
 * The PID has this format: <Product ID>:<Item ID>.<Variant>-<Item Type>;<Revision>
 * %PID:%
 * %PCMS_HEADER_SUBSTITUTION_END:%
 **********************************************************************************************************************/
'/**********************************************************************************************************************/
/* !Layer           : MCAL                                                                                            */
/* !Component       : PWD                                                                                             */
/* !Component       : PWD                                                                                             */
/* !Description     : Code For PWD Component                                                                          */
/*                                                                                                                    */
/* !File            : PWD_DEF.c                                                                                       */
/* !Description     : This file contains the definition of PWD component test variables.                              */
/*                                                                                                                    */
/* !Reference       :                                                                                                 */
/*                                                                                                                    */
/* Coding language  : C                                                                                               */
/*                                                                                                                    */
/* COPYRIGHT VALEO all rights reserved                                                                                */
/**********************************************************************************************************************/
/** `Date()': generated by Genecode `Version()'                        */
/**********************************************************************************************************************/

#include "Std_Types.h"
#include "PWD_DEF.h"

#define PWD_START_SEC_VAR_UNSPECIFIED
#include "PWD_MemMap.h"

boolean PWD_bEnableAll;
uint16 PWD_u16UpdateDisable;
`
PWD_CHANNEL AS FunctionalName CONCATE
{
   WHERE (FunctionalName == "")
   {
'
boolean PWD_bEna_`FunctionalName';
uint32  PWD_udtPer_`FunctionalName';
uint32  PWD_udtActiveDuration_`FunctionalName';
uint16  PWD_udtDuty_`FunctionalName';
uint32  PWD_udtTout_`FunctionalName';
Std_ReturnType PWD_udtToutSt_`FunctionalName';
  `}
   WHERE (FunctionalName != "")
   {
'
boolean PWD_bEna_`FunctionalName';
uint32  PWD_udtPer_`FunctionalName';
uint32  PWD_udtFreq_`FunctionalName';
uint32  PWD_udtActiveDuration_`FunctionalName';
uint16  PWD_udtDuty_`FunctionalName';
uint32  PWD_udtToutRloadVal_`FunctionalName';
boolean PWD_bFirstPerOccured_`FunctionalName';
boolean PWD_bCurrentLvlIsActive_`FunctionalName';
uint32  PWD_udtTout_`FunctionalName';
uint32  PWD_udtTout_Desired_`FunctionalName';

uint32  TEST_DUTY_`FunctionalName';
uint32  TEST_PERIOD_`FunctionalName';

Std_ReturnType PWD_udtToutSt_`FunctionalName';
  `}
}'
#define PWD_STOP_SEC_VAR_UNSPECIFIED
#include "PWD_MemMap.h"

#define PWD_START_SEC_CALIB_UNSPECIFIED
#include "PWD_MemMap.h"

`
PWD_CHANNEL AS FunctionalName CONCATE
{
   WHERE (FunctionalName == "")
   {
'const uint32  PWD_kudtTout_`FunctionalName' = 1000000;
`  }
   WHERE (FunctionalName != "")
   {
'const uint32  PWD_kudtTout_`FunctionalName' = 1000000;
`  }
}'
#define PWD_STOP_SEC_CALIB_UNSPECIFIED
#include "PWD_MemMap.h"


/*---------------------------------------------------- end of file ---------------------------------------------------*/
