$header

#include "hbclass.ch"

%% TODO:
%% #ifndef QT_NO_SPINBOX
%% #endif // QT_NO_SPINBOX

CLASS QStyleOptionSpinBox INHERIT QStyleOptionComplex

   METHOD new
%%   METHOD delete

   METHOD buttonSymbols
   METHOD stepEnabled
   METHOD frame

   METHOD setButtonSymbols
   METHOD setStepEnabled
   METHOD setFrame

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionSpinBox()
$internalConstructor=|new1|

$prototype=QStyleOptionSpinBox(const QStyleOptionSpinBox &other)
$internalConstructor=|new2|const QStyleOptionSpinBox &

$prototype=QStyleOptionSpinBox(int version) (protected)

//[1]QStyleOptionSpinBox()
//[2]QStyleOptionSpinBox(const QStyleOptionSpinBox &other)
//[3]QStyleOptionSpinBox(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONSPINBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionSpinBox_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONSPINBOX(1) )
  {
    QStyleOptionSpinBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QAbstractSpinBox::ButtonSymbols buttonSymbols
$variableMethod=|QAbstractSpinBox::ButtonSymbols|buttonSymbols|
$variableMethod=|void|buttonSymbols,setButtonSymbols|QAbstractSpinBox::ButtonSymbols

$prototype=QAbstractSpinBox::StepEnabled stepEnabled
$variableMethod=|QAbstractSpinBox::StepEnabled|stepEnabled|
$variableMethod=|void|stepEnabled,setStepEnabled|QAbstractSpinBox::StepEnabled

$prototype=bool frame
$variableMethod=|bool|frame|
$variableMethod=|void|frame,setFrame|bool

#pragma ENDDUMP
