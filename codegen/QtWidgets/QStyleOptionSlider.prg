$header

#include "hbclass.ch"

%% TODO:
%% #ifndef QT_NO_SLIDER
%% #endif // QT_NO_SLIDER

CLASS QStyleOptionSlider INHERIT QStyleOptionComplex

   METHOD new
%%   METHOD delete

   METHOD orientation
   METHOD minimum
   METHOD maximum
   METHOD tickPosition
   METHOD tickInterval
   METHOD upsideDown
   METHOD sliderPosition
   METHOD sliderValue
   METHOD singleStep
   METHOD pageStep
   METHOD notchTarget
   METHOD dialWrapping

   METHOD setOrientation
   METHOD setMinimum
   METHOD setMaximum
   METHOD setTickPosition
   METHOD setTickInterval
   METHOD setUpsideDown
   METHOD setSliderPosition
   METHOD setSliderValue
   METHOD setSingleStep
   METHOD setPageStep
   METHOD setNotchTarget
   METHOD setDialWrapping

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionSlider()
$internalConstructor=|new1|

$prototype=QStyleOptionSlider(const QStyleOptionSlider &other)
$internalConstructor=|new2|const QStyleOptionSlider &

$prototype=QStyleOptionSlider(int version) (protected)

//[1]QStyleOptionSlider()
//[2]QStyleOptionSlider(const QStyleOptionSlider &other)
//[3]QStyleOptionSlider(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONSLIDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionSlider_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONSLIDER(1) )
  {
    QStyleOptionSlider_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=Qt::Orientation orientation
$variableMethod=|Qt::Orientation|orientation|
$variableMethod=|void|orientation,setOrientation|Qt::Orientation

$prototype=int minimum
$variableMethod=|int|minimum|
$variableMethod=|void|minimum,setMinimum|int

$prototype=int maximum
$variableMethod=|int|maximum|
$variableMethod=|void|maximum,setMaximum|int

$prototype=QSlider::TickPosition tickPosition
$variableMethod=|QSlider::TickPosition|tickPosition|
$variableMethod=|void|tickPosition,setTickPosition|QSlider::TickPosition

$prototype=int tickInterval
$variableMethod=|int|tickInterval|
$variableMethod=|void|tickInterval,setTickInterval|int

$prototype=bool upsideDown
$variableMethod=|bool|upsideDown|
$variableMethod=|void|upsideDown,setUpsideDown|bool

$prototype=int sliderPosition
$variableMethod=|int|sliderPosition|
$variableMethod=|void|sliderPosition,setSliderPosition|int

$prototype=int sliderValue
$variableMethod=|int|sliderValue|
$variableMethod=|void|sliderValue,setSliderValue|int

$prototype=int singleStep
$variableMethod=|int|singleStep|
$variableMethod=|void|singleStep,setSingleStep|int

$prototype=int pageStep
$variableMethod=|int|pageStep|
$variableMethod=|void|pageStep,setPageStep|int

$prototype=qreal notchTarget
$variableMethod=|qreal|notchTarget|
$variableMethod=|void|notchTarget,setNotchTarget|qreal

$prototype=bool dialWrapping
$variableMethod=|bool|dialWrapping|
$variableMethod=|void|dialWrapping,setDialWrapping|bool

#pragma ENDDUMP
