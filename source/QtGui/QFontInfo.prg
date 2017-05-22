/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QFontInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFontInfo>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFontInfo>
#endif

/*
QFontInfo ( const QFont & font )
*/
void QFontInfo_new1 ()
{
  QFont * par1 = (QFont *) _qt5xhb_itemGetPtr(1);
  QFontInfo * o = new QFontInfo ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QFontInfo ( const QFontInfo & fi )
*/
void QFontInfo_new2 ()
{
  QFontInfo * par1 = (QFontInfo *) _qt5xhb_itemGetPtr(1);
  QFontInfo * o = new QFontInfo ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

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

HB_FUNC_STATIC( QFONTINFO_DELETE )
{
  QFontInfo * obj = (QFontInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
}

/*
bool bold () const
*/
HB_FUNC_STATIC( QFONTINFO_BOLD )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->bold () );
  }
}

/*
bool exactMatch () const
*/
HB_FUNC_STATIC( QFONTINFO_EXACTMATCH )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->exactMatch () );
  }
}

/*
QString family () const
*/
HB_FUNC_STATIC( QFONTINFO_FAMILY )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->family () ) );
  }
}

/*
bool fixedPitch () const
*/
HB_FUNC_STATIC( QFONTINFO_FIXEDPITCH )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->fixedPitch () );
  }
}

/*
bool italic () const
*/
HB_FUNC_STATIC( QFONTINFO_ITALIC )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->italic () );
  }
}

/*
int pixelSize () const
*/
HB_FUNC_STATIC( QFONTINFO_PIXELSIZE )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->pixelSize () );
  }
}

/*
int pointSize () const
*/
HB_FUNC_STATIC( QFONTINFO_POINTSIZE )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->pointSize () );
  }
}

/*
qreal pointSizeF () const
*/
HB_FUNC_STATIC( QFONTINFO_POINTSIZEF )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retnd( obj->pointSizeF () );
  }
}

/*
bool rawMode () const
*/
HB_FUNC_STATIC( QFONTINFO_RAWMODE )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->rawMode () );
  }
}

/*
QFont::Style style () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLE )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->style () );
  }
}

/*
QFont::StyleHint styleHint () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLEHINT )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->styleHint () );
  }
}

/*
QString styleName () const
*/
HB_FUNC_STATIC( QFONTINFO_STYLENAME )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->styleName () ) );
  }
}

/*
int weight () const
*/
HB_FUNC_STATIC( QFONTINFO_WEIGHT )
{
  QFontInfo * obj = (QFontInfo *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->weight () );
  }
}

HB_FUNC_STATIC( QFONTINFO_NEWFROM )
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

HB_FUNC_STATIC( QFONTINFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONTINFO_NEWFROM );
}

HB_FUNC_STATIC( QFONTINFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONTINFO_NEWFROM );
}

HB_FUNC_STATIC( QFONTINFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFONTINFO_SETSELFDESTRUCTION )
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
