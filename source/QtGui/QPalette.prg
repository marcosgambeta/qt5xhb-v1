/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QCOLOR
#endif

CLASS QPalette

   DATA pointer
   DATA class_id INIT Class_Id_QPalette
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD alternateBase
   METHOD base
   METHOD brightText
   METHOD brush1
   METHOD brush2
   METHOD brush
   METHOD button
   METHOD buttonText
   METHOD cacheKey
   METHOD color1
   METHOD color2
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
   METHOD setBrush1
   METHOD setBrush2
   METHOD setBrush
   METHOD setColor1
   METHOD setColor2
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

PROCEDURE destroyObject () CLASS QPalette
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPalette>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPalette>
#endif
#endif

/*
QPalette ()
*/
HB_FUNC_STATIC( QPALETTE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPalette * o = new QPalette (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPalette *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPalette ( const QColor & button )
*/
HB_FUNC_STATIC( QPALETTE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  QPalette * o = new QPalette ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPalette *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPalette ( Qt::GlobalColor button )
*/
HB_FUNC_STATIC( QPALETTE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  QPalette * o = new QPalette (  (Qt::GlobalColor) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPalette *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPalette ( const QColor & button, const QColor & window )
*/
HB_FUNC_STATIC( QPALETTE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
  QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
  QPalette * o = new QPalette ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPalette *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPalette ( const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
*/
HB_FUNC_STATIC( QPALETTE_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QBrush * par1 = (QBrush *) _qt5xhb_itemGetPtr(1);
  QBrush * par2 = (QBrush *) _qt5xhb_itemGetPtr(2);
  QBrush * par3 = (QBrush *) _qt5xhb_itemGetPtr(3);
  QBrush * par4 = (QBrush *) _qt5xhb_itemGetPtr(4);
  QBrush * par5 = (QBrush *) _qt5xhb_itemGetPtr(5);
  QBrush * par6 = (QBrush *) _qt5xhb_itemGetPtr(6);
  QBrush * par7 = (QBrush *) _qt5xhb_itemGetPtr(7);
  QBrush * par8 = (QBrush *) _qt5xhb_itemGetPtr(8);
  QBrush * par9 = (QBrush *) _qt5xhb_itemGetPtr(9);
  QPalette * o = new QPalette ( *par1, *par2, *par3, *par4, *par5, *par6, *par7, *par8, *par9 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPalette *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QPalette ( const QPalette & p )
*/
HB_FUNC_STATIC( QPALETTE_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPalette * par1 = (QPalette *) _qt5xhb_itemGetPtr(1);
  QPalette * o = new QPalette ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPalette *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


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
    HB_FUNC_EXEC( QPALETTE_NEW1 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW3 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW4 );
  }
  else if( ISNUMPAR(9) && ISQBRUSH(1) && ISQBRUSH(2) && ISQBRUSH(3) && ISQBRUSH(4) && ISQBRUSH(5) && ISQBRUSH(6) && ISQBRUSH(7) && ISQBRUSH(8) && ISQBRUSH(9) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    HB_FUNC_EXEC( QPALETTE_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPALETTE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPalette * obj = (QPalette *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
const QBrush & alternateBase () const
*/
HB_FUNC_STATIC( QPALETTE_ALTERNATEBASE )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QBrush * ptr = &obj->alternateBase (  );
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
    const QBrush * ptr = &obj->base (  );
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
    const QBrush * ptr = &obj->brightText (  );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}


/*
const QBrush & brush ( ColorGroup group, ColorRole role ) const
*/
HB_FUNC_STATIC( QPALETTE_BRUSH1 )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    const QBrush * ptr = &obj->brush (  (QPalette::ColorGroup) par1,  (QPalette::ColorRole) par2 );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}


/*
const QBrush & brush ( ColorRole role ) const
*/
HB_FUNC_STATIC( QPALETTE_BRUSH2 )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QBrush * ptr = &obj->brush (  (QPalette::ColorRole) par1 );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}


//[1]const QBrush & brush ( ColorGroup group, ColorRole role ) const
//[2]const QBrush & brush ( ColorRole role ) const

HB_FUNC_STATIC( QPALETTE_BRUSH )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPALETTE_BRUSH1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPALETTE_BRUSH2 );
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
    const QBrush * ptr = &obj->button (  );
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
    const QBrush * ptr = &obj->buttonText (  );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}


/*
qint64 cacheKey () const
*/
HB_FUNC_STATIC( QPALETTE_CACHEKEY )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cacheKey (  ) );
  }
}


/*
const QColor & color ( ColorGroup group, ColorRole role ) const
*/
HB_FUNC_STATIC( QPALETTE_COLOR1 )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    const QColor * ptr = &obj->color (  (QPalette::ColorGroup) par1,  (QPalette::ColorRole) par2 );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR" );
  }
}


/*
const QColor & color ( ColorRole role ) const
*/
HB_FUNC_STATIC( QPALETTE_COLOR2 )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QColor * ptr = &obj->color (  (QPalette::ColorRole) par1 );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR" );
  }
}


//[1]const QColor & color ( ColorGroup group, ColorRole role ) const
//[2]const QColor & color ( ColorRole role ) const

HB_FUNC_STATIC( QPALETTE_COLOR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPALETTE_COLOR1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPALETTE_COLOR2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ColorGroup currentColorGroup () const
*/
HB_FUNC_STATIC( QPALETTE_CURRENTCOLORGROUP )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentColorGroup (  ) );
  }
}


/*
const QBrush & dark () const
*/
HB_FUNC_STATIC( QPALETTE_DARK )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QBrush * ptr = &obj->dark (  );
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
    const QBrush * ptr = &obj->highlight (  );
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
    const QBrush * ptr = &obj->highlightedText (  );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}


/*
bool isBrushSet ( ColorGroup cg, ColorRole cr ) const
*/
HB_FUNC_STATIC( QPALETTE_ISBRUSHSET )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    hb_retl( obj->isBrushSet (  (QPalette::ColorGroup) par1,  (QPalette::ColorRole) par2 ) );
  }
}


/*
bool isCopyOf ( const QPalette & p ) const
*/
HB_FUNC_STATIC( QPALETTE_ISCOPYOF )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * par1 = (QPalette *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isCopyOf ( *par1 ) );
  }
}


/*
bool isEqual ( ColorGroup cg1, ColorGroup cg2 ) const
*/
HB_FUNC_STATIC( QPALETTE_ISEQUAL )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    hb_retl( obj->isEqual (  (QPalette::ColorGroup) par1,  (QPalette::ColorGroup) par2 ) );
  }
}


/*
const QBrush & light () const
*/
HB_FUNC_STATIC( QPALETTE_LIGHT )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QBrush * ptr = &obj->light (  );
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
    const QBrush * ptr = &obj->link (  );
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
    const QBrush * ptr = &obj->linkVisited (  );
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
    const QBrush * ptr = &obj->mid (  );
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
    const QBrush * ptr = &obj->midlight (  );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}


/*
QPalette resolve ( const QPalette & other ) const
*/
HB_FUNC_STATIC( QPALETTE_RESOLVE )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * par1 = (QPalette *) _qt5xhb_itemGetPtr(1);
    QPalette * ptr = new QPalette( obj->resolve ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
void setBrush ( ColorRole role, const QBrush & brush )
*/
HB_FUNC_STATIC( QPALETTE_SETBRUSH1 )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QBrush * par2 = (QBrush *) _qt5xhb_itemGetPtr(2);
    obj->setBrush (  (QPalette::ColorRole) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )
*/
HB_FUNC_STATIC( QPALETTE_SETBRUSH2 )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QBrush * par3 = (QBrush *) _qt5xhb_itemGetPtr(3);
    obj->setBrush (  (QPalette::ColorGroup) par1,  (QPalette::ColorRole) par2, *par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setBrush ( ColorRole role, const QBrush & brush )
//[2]void setBrush ( ColorGroup group, ColorRole role, const QBrush & brush )

HB_FUNC_STATIC( QPALETTE_SETBRUSH )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQBRUSH(2) )
  {
    HB_FUNC_EXEC( QPALETTE_SETBRUSH1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBRUSH(3) )
  {
    HB_FUNC_EXEC( QPALETTE_SETBRUSH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setColor ( ColorGroup group, ColorRole role, const QColor & color )
*/
HB_FUNC_STATIC( QPALETTE_SETCOLOR1 )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QColor par3 = ISOBJECT(3)? *(QColor *) _qt5xhb_itemGetPtr(3) : QColor(hb_parc(3));
    obj->setColor (  (QPalette::ColorGroup) par1,  (QPalette::ColorRole) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColor ( ColorRole role, const QColor & color )
*/
HB_FUNC_STATIC( QPALETTE_SETCOLOR2 )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
    obj->setColor (  (QPalette::ColorRole) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setColor ( ColorGroup group, ColorRole role, const QColor & color )
//[2]void setColor ( ColorRole role, const QColor & color )

HB_FUNC_STATIC( QPALETTE_SETCOLOR )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && (ISQCOLOR(3)||ISCHAR(3)) )
  {
    HB_FUNC_EXEC( QPALETTE_SETCOLOR1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QPALETTE_SETCOLOR2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setColorGroup ( ColorGroup cg, const QBrush & windowText, const QBrush & button, const QBrush & light, const QBrush & dark, const QBrush & mid, const QBrush & text, const QBrush & bright_text, const QBrush & base, const QBrush & window )
*/
HB_FUNC_STATIC( QPALETTE_SETCOLORGROUP )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QBrush * par2 = (QBrush *) _qt5xhb_itemGetPtr(2);
    QBrush * par3 = (QBrush *) _qt5xhb_itemGetPtr(3);
    QBrush * par4 = (QBrush *) _qt5xhb_itemGetPtr(4);
    QBrush * par5 = (QBrush *) _qt5xhb_itemGetPtr(5);
    QBrush * par6 = (QBrush *) _qt5xhb_itemGetPtr(6);
    QBrush * par7 = (QBrush *) _qt5xhb_itemGetPtr(7);
    QBrush * par8 = (QBrush *) _qt5xhb_itemGetPtr(8);
    QBrush * par9 = (QBrush *) _qt5xhb_itemGetPtr(9);
    QBrush * par10 = (QBrush *) _qt5xhb_itemGetPtr(10);
    obj->setColorGroup (  (QPalette::ColorGroup) par1, *par2, *par3, *par4, *par5, *par6, *par7, *par8, *par9, *par10 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentColorGroup ( ColorGroup cg )
*/
HB_FUNC_STATIC( QPALETTE_SETCURRENTCOLORGROUP )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCurrentColorGroup (  (QPalette::ColorGroup) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QBrush & shadow () const
*/
HB_FUNC_STATIC( QPALETTE_SHADOW )
{
  QPalette * obj = (QPalette *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QBrush * ptr = &obj->shadow (  );
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
    const QBrush * ptr = &obj->text (  );
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
    const QBrush * ptr = &obj->toolTipBase (  );
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
    const QBrush * ptr = &obj->toolTipText (  );
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
    const QBrush * ptr = &obj->window (  );
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
    const QBrush * ptr = &obj->windowText (  );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH" );
  }
}



HB_FUNC_STATIC( QPALETTE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPALETTE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPALETTE_NEWFROM );
}

HB_FUNC_STATIC( QPALETTE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPALETTE_NEWFROM );
}

HB_FUNC_STATIC( QPALETTE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPALETTE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
