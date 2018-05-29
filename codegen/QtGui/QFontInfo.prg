%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFontInfo ( const QFont & font )
$internalConstructor=|new1|const QFont &

$prototype=QFontInfo ( const QFontInfo & fi )
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

$prototype=bool bold () const
$method=|bool|bold|

$prototype=bool exactMatch () const
$method=|bool|exactMatch|

$prototype=QString family () const
$method=|QString|family|

$prototype=bool fixedPitch () const
$method=|bool|fixedPitch|

$prototype=bool italic () const
$method=|bool|italic|

$prototype=int pixelSize () const
$method=|int|pixelSize|

$prototype=int pointSize () const
$method=|int|pointSize|

$prototype=qreal pointSizeF () const
$method=|qreal|pointSizeF|

$prototype=bool rawMode () const
$method=|bool|rawMode|

$prototype=QFont::Style style () const
$method=|QFont::Style|style|

$prototype=QFont::StyleHint styleHint () const
$method=|QFont::StyleHint|styleHint|

$prototype=QString styleName () const
$method=|QString|styleName|

$prototype=int weight () const
$method=|int|weight|

$extraMethods

#pragma ENDDUMP
