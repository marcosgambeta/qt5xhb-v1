$header

#include "hbclass.ch"

CLASS QFontInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bold
   METHOD exactMatch
   METHOD family
   METHOD fixedPitch
   METHOD italic
   METHOD pixelSize
   METHOD pointSize
   METHOD pointSizeF
   METHOD rawMode
   METHOD style
   METHOD styleHint
   METHOD styleName
   METHOD weight

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFontInfo ( const QFont & font )
*/
$internalConstructor=|new1|const QFont &

/*
QFontInfo ( const QFontInfo & fi )
*/
$internalConstructor=|new2|const QFontInfo &

//[1]QFontInfo ( const QFont & font )
//[2]QFontInfo ( const QFontInfo & fi )

HB_FUNC_STATIC( QFONTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    QFontInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool bold () const
*/
$method=|bool|bold|

/*
bool exactMatch () const
*/
$method=|bool|exactMatch|

/*
QString family () const
*/
$method=|QString|family|

/*
bool fixedPitch () const
*/
$method=|bool|fixedPitch|

/*
bool italic () const
*/
$method=|bool|italic|

/*
int pixelSize () const
*/
$method=|int|pixelSize|

/*
int pointSize () const
*/
$method=|int|pointSize|

/*
qreal pointSizeF () const
*/
$method=|qreal|pointSizeF|

/*
bool rawMode () const
*/
$method=|bool|rawMode|

/*
QFont::Style style () const
*/
$method=|QFont::Style|style|

/*
QFont::StyleHint styleHint () const
*/
$method=|QFont::StyleHint|styleHint|

/*
QString styleName () const
*/
$method=|QString|styleName|

/*
int weight () const
*/
$method=|int|weight|

$extraMethods

#pragma ENDDUMP
