$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QPALETTE
#endif

CLASS QToolTip

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD font
   METHOD hideText
   METHOD isVisible
   METHOD palette
   METHOD setFont
   METHOD setPalette
   METHOD showText1
   METHOD showText2
   METHOD showText
   METHOD text

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

$deleteMethod

/*
QFont font()
*/
HB_FUNC_STATIC( QTOOLTIP_FONT )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void hideText()
*/
HB_FUNC_STATIC( QTOOLTIP_HIDETEXT )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hideText ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isVisible()
*/
HB_FUNC_STATIC( QTOOLTIP_ISVISIBLE )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
}


/*
QPalette palette()
*/
HB_FUNC_STATIC( QTOOLTIP_PALETTE )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->palette () );
    _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
void setFont(const QFont & font)
*/
HB_FUNC_STATIC( QTOOLTIP_SETFONT )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFont ( *PQFONT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPalette(const QPalette & palette)
*/
HB_FUNC_STATIC( QTOOLTIP_SETPALETTE )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPalette ( *PQPALETTE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showText(const QPoint & pos, const QString & text, QWidget * w, const QRect & rect)
*/
HB_FUNC_STATIC( QTOOLTIP_SHOWTEXT1 )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showText ( *PQPOINT(1), PQSTRING(2), PQWIDGET(3), *PQRECT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showText(const QPoint & pos, const QString & text, QWidget * w = 0)
*/
HB_FUNC_STATIC( QTOOLTIP_SHOWTEXT2 )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showText ( *PQPOINT(1), PQSTRING(2), OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void showText(const QPoint & pos, const QString & text, QWidget * w, const QRect & rect)
//[2]void showText(const QPoint & pos, const QString & text, QWidget * w = 0)

HB_FUNC_STATIC( QTOOLTIP_SHOWTEXT )
{
  if( ISNUMPAR(4) && ISQPOINT(1) && ISCHAR(2) && ISQWIDGET(3) && ISQRECT(4) )
  {
    HB_FUNC_EXEC( QTOOLTIP_SHOWTEXT1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINT(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    HB_FUNC_EXEC( QTOOLTIP_SHOWTEXT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString text()
*/
HB_FUNC_STATIC( QTOOLTIP_TEXT )
{
  QToolTip * obj = (QToolTip *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}

$extraMethods

#pragma ENDDUMP
