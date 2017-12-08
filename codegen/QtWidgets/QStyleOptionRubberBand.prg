$header

#include "hbclass.ch"

%% TODO: class under condition
%% #ifndef QT_NO_RUBBERBAND
%% #endif // QT_NO_RUBBERBAND

CLASS QStyleOptionRubberBand INHERIT QStyleOption

   METHOD new
%%   METHOD delete

   METHOD shape
   METHOD opaque

   METHOD setShape
   METHOD setOpaque

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionRubberBand()
$internalConstructor=|new1|

$prototype=QStyleOptionRubberBand(const QStyleOptionRubberBand &other)
$internalConstructor=|new2|const QStyleOptionRubberBand &

$prototype=QStyleOptionRubberBand(int version) (protected)

//[1]QStyleOptionRubberBand()
//[2]QStyleOptionRubberBand(const QStyleOptionRubberBand &other)
//[3]QStyleOptionRubberBand(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONRUBBERBAND_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionRubberBand_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONRUBBERBAND(1) )
  {
    QStyleOptionRubberBand_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QRubberBand::Shape shape
$variableMethod=|QRubberBand::Shape|shape|
$variableMethod=|void|shape,setShape|QRubberBand::Shape

$prototype=bool opaque
$variableMethod=|bool|opaque|
$variableMethod=|void|opaque,setOpaque|bool

#pragma ENDDUMP
