$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QPalette

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD alternateBase
   METHOD base
   METHOD brightText
   METHOD brush
   METHOD button
   METHOD buttonText
   METHOD cacheKey
   METHOD color
   METHOD currentColorGroup
   METHOD dark
   METHOD highlight
   METHOD highlightedText
   METHOD isBrushSet
   METHOD isCopyOf
   METHOD isEqual
   METHOD light
   METHOD link
   METHOD linkVisited
   METHOD mid
   METHOD midlight
   METHOD resolve
   METHOD setBrush
   METHOD setColor
   METHOD setColorGroup
   METHOD setCurrentColorGroup
   METHOD shadow
   METHOD text
   METHOD toolTipBase
   METHOD toolTipText
   METHOD window
   METHOD windowText

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
QPalette ()
*/
$internalConstructor=|new1|

/*
QPalette ( const QColor & button )
*/
$internalConstructor=|new2|const QColor &

/*
QPalette ( Qt::GlobalColor button )
*/
$internalConstructor=|new3|Qt::GlobalColor

/*
QPalette ( const QColor & button, const QColor & window )
*/
$internalConstructor=|new4|const QColor &,const QColor &

/*
QPalette ( const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
*/
$internalConstructor=|new5|const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &

/*
QPalette ( const QPalette & p )
*/
$internalConstructor=|new6|const QPalette &

//[1]QPalette ()
//[2]QPalette ( const QColor & button )
//[3]QPalette ( Qt::GlobalColor button )
//[4]QPalette ( const QColor & button, const QColor & window )
//[5]QPalette ( const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
//[6]QPalette ( const QPalette & p )

HB_FUNC_STATIC( QPALETTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPalette_new1();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QPalette_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPalette_new3();
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    QPalette_new4();
  }
  else if( ISNUMPAR(9) && ISQBRUSH(1) && ISQBRUSH(2) && ISQBRUSH(3) && ISQBRUSH(4) && ISQBRUSH(5) && ISQBRUSH(6) && ISQBRUSH(7) && ISQBRUSH(8) && ISQBRUSH(9) )
  {
    QPalette_new5();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QPalette_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QBrush & alternateBase () const
*/
$method=|const QBrush &|alternateBase|

/*
const QBrush & base () const
*/
$method=|const QBrush &|base|

/*
const QBrush & brightText () const
*/
$method=|const QBrush &|brightText|

/*
const QBrush & brush ( ColorGroup group, ColorRole role ) const
*/
$internalMethod=|const QBrush &|brush,brush1|QPalette::ColorGroup,QPalette::ColorRole

/*
const QBrush & brush ( ColorRole role ) const
*/
$internalMethod=|const QBrush &|brush,brush2|QPalette::ColorRole

//[1]const QBrush & brush ( ColorGroup group, ColorRole role ) const
//[2]const QBrush & brush ( ColorRole role ) const

HB_FUNC_STATIC( QPALETTE_BRUSH )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPalette_brush1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPalette_brush2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QBrush & button () const
*/
$method=|const QBrush &|button|

/*
const QBrush & buttonText () const
*/
$method=|const QBrush &|buttonText|

/*
qint64 cacheKey () const
*/
$method=|qint64|cacheKey|

/*
const QColor & color ( ColorGroup group, ColorRole role ) const
*/
$internalMethod=|const QColor &|color,color1|QPalette::ColorGroup,QPalette::ColorRole

/*
const QColor & color ( ColorRole role ) const
*/
$internalMethod=|const QColor &|color,color2|QPalette::ColorRole

//[1]const QColor & color ( ColorGroup group, ColorRole role ) const
//[2]const QColor & color ( ColorRole role ) const

HB_FUNC_STATIC( QPALETTE_COLOR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPalette_color1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPalette_color2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ColorGroup currentColorGroup () const
*/
$method=|QPalette::ColorGroup|currentColorGroup|

/*
const QBrush & dark () const
*/
$method=|const QBrush &|dark|

/*
const QBrush & highlight () const
*/
$method=|const QBrush &|highlight|

/*
const QBrush & highlightedText () const
*/
$method=|const QBrush &|highlightedText|

/*
bool isBrushSet ( ColorGroup cg, ColorRole cr ) const
*/
$method=|bool|isBrushSet|QPalette::ColorGroup,QPalette::ColorRole

/*
bool isCopyOf ( const QPalette & p ) const
*/
$method=|bool|isCopyOf|const QPalette &

/*
bool isEqual ( ColorGroup cg1, ColorGroup cg2 ) const
*/
$method=|bool|isEqual|QPalette::ColorGroup,QPalette::ColorGroup

/*
const QBrush & light () const
*/
$method=|const QBrush &|light|

/*
const QBrush & link () const
*/
$method=|const QBrush &|link|

/*
const QBrush & linkVisited () const
*/
$method=|const QBrush &|linkVisited|

/*
const QBrush & mid () const
*/
$method=|const QBrush &|mid|

/*
const QBrush & midlight () const
*/
$method=|const QBrush &|midlight|

/*
QPalette resolve ( const QPalette & other ) const
*/
$method=|QPalette|resolve|const QPalette &

/*
void setBrush ( ColorRole role, const QBrush & brush )
*/
$internalMethod=|void|setBrush,setBrush1|QPalette::ColorRole,const QBrush &

/*
void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )
*/
$internalMethod=|void|setBrush,setBrush2|QPalette::ColorGroup,QPalette::ColorRole,const QBrush &

//[1]void setBrush ( ColorRole role, const QBrush & brush )
//[2]void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )

HB_FUNC_STATIC( QPALETTE_SETBRUSH )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQBRUSH(2) )
  {
    QPalette_setBrush1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBRUSH(3) )
  {
    QPalette_setBrush2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setColor ( ColorGroup group, ColorRole role, const QColor & color )
*/
$internalMethod=|void|setColor,setColor1|QPalette::ColorGroup,QPalette::ColorRole,const QColor &

/*
void setColor ( ColorRole role, const QColor & color )
*/
$internalMethod=|void|setColor,setColor2|QPalette::ColorRole,const QColor &

//[1]void setColor ( ColorGroup group, ColorRole role, const QColor & color )
//[2]void setColor ( ColorRole role, const QColor & color )

HB_FUNC_STATIC( QPALETTE_SETCOLOR )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && (ISQCOLOR(3)||ISCHAR(3)) )
  {
    QPalette_setColor1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    QPalette_setColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setColorGroup ( ColorGroup cg, const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
*/
$method=|void|setColorGroup|QPalette::ColorGroup,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &,const QBrush &

/*
void setCurrentColorGroup ( ColorGroup cg )
*/
$method=|void|setCurrentColorGroup|QPalette::ColorGroup

/*
const QBrush & shadow () const
*/
$method=|const QBrush &|shadow|

/*
const QBrush & text () const
*/
$method=|const QBrush &|text|

/*
const QBrush & toolTipBase () const
*/
$method=|const QBrush &|toolTipBase|

/*
const QBrush & toolTipText () const
*/
$method=|const QBrush &|toolTipText|

/*
const QBrush & window () const
*/
$method=|const QBrush &|window|

/*
const QBrush & windowText () const
*/
$method=|const QBrush &|windowText|

$extraMethods

#pragma ENDDUMP
