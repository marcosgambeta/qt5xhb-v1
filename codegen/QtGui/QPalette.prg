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
HB_FUNC_STATIC( QPALETTE_ALTERNATEBASE )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->alternateBase ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & base () const
*/
HB_FUNC_STATIC( QPALETTE_BASE )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->base ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & brightText () const
*/
HB_FUNC_STATIC( QPALETTE_BRIGHTTEXT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->brightText ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & brush ( ColorGroup group, ColorRole role ) const
*/
void QPalette_brush1 ()
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->brush ( (QPalette::ColorGroup) hb_parni(1), (QPalette::ColorRole) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & brush ( ColorRole role ) const
*/
void QPalette_brush2 ()
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->brush ( (QPalette::ColorRole) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

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
HB_FUNC_STATIC( QPALETTE_BUTTON )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->button ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & buttonText () const
*/
HB_FUNC_STATIC( QPALETTE_BUTTONTEXT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->buttonText ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
qint64 cacheKey () const
*/
$method=|qint64|cacheKey|

/*
const QColor & color ( ColorGroup group, ColorRole role ) const
*/
void QPalette_color1 ()
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QColor * ptr = &obj->color ( (QPalette::ColorGroup) hb_parni(1), (QPalette::ColorRole) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR" );
  }
}

/*
const QColor & color ( ColorRole role ) const
*/
void QPalette_color2 ()
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QColor * ptr = &obj->color ( (QPalette::ColorRole) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR" );
  }
}

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
HB_FUNC_STATIC( QPALETTE_DARK )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->dark ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & highlight () const
*/
HB_FUNC_STATIC( QPALETTE_HIGHLIGHT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->highlight ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & highlightedText () const
*/
HB_FUNC_STATIC( QPALETTE_HIGHLIGHTEDTEXT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->highlightedText ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

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
HB_FUNC_STATIC( QPALETTE_LIGHT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->light ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & link () const
*/
HB_FUNC_STATIC( QPALETTE_LINK )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->link ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & linkVisited () const
*/
HB_FUNC_STATIC( QPALETTE_LINKVISITED )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->linkVisited ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & mid () const
*/
HB_FUNC_STATIC( QPALETTE_MID )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->mid ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & midlight () const
*/
HB_FUNC_STATIC( QPALETTE_MIDLIGHT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->midlight ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
QPalette resolve ( const QPalette & other ) const
*/
$method=|QPalette|resolve|const QPalette &

/*
void setBrush ( ColorRole role, const QBrush & brush )
*/
void QPalette_setBrush1 ()
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBrush ( (QPalette::ColorRole) hb_parni(1), *PQBRUSH(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )
*/
void QPalette_setBrush2 ()
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBrush ( (QPalette::ColorGroup) hb_parni(1), (QPalette::ColorRole) hb_parni(2), *PQBRUSH(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
void QPalette_setColor1 ()
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par3 = ISOBJECT(3)? *(QColor *) _qt5xhb_itemGetPtr(3) : QColor(hb_parc(3));
    obj->setColor ( (QPalette::ColorGroup) hb_parni(1), (QPalette::ColorRole) hb_parni(2), par3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColor ( ColorRole role, const QColor & color )
*/
void QPalette_setColor2 ()
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
    obj->setColor ( (QPalette::ColorRole) hb_parni(1), par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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
HB_FUNC_STATIC( QPALETTE_SHADOW )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->shadow ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & text () const
*/
HB_FUNC_STATIC( QPALETTE_TEXT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->text ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & toolTipBase () const
*/
HB_FUNC_STATIC( QPALETTE_TOOLTIPBASE )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->toolTipBase ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & toolTipText () const
*/
HB_FUNC_STATIC( QPALETTE_TOOLTIPTEXT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->toolTipText ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & window () const
*/
HB_FUNC_STATIC( QPALETTE_WINDOW )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->window ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

/*
const QBrush & windowText () const
*/
HB_FUNC_STATIC( QPALETTE_WINDOWTEXT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QBrush * ptr = &obj->windowText ();
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}

$extraMethods

#pragma ENDDUMP
