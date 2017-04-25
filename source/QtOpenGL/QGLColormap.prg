/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGLColormap

   DATA pointer
   //DATA class_id INIT Class_Id_QGLColormap
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD entryColor
   METHOD entryRgb
   METHOD find
   METHOD findNearest
   METHOD isEmpty
   METHOD setEntries
   METHOD setEntry1
   METHOD setEntry2
   METHOD setEntry
   METHOD size

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLColormap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLColormap>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGLColormap>
#endif

/*
QGLColormap ()
*/
HB_FUNC_STATIC( QGLCOLORMAP_NEW1 )
{
  QGLColormap * o = new QGLColormap (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLColormap ( const QGLColormap & map )
*/
HB_FUNC_STATIC( QGLCOLORMAP_NEW2 )
{
  QGLColormap * par1 = (QGLColormap *) _qt5xhb_itemGetPtr(1);
  QGLColormap * o = new QGLColormap ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGLColormap ()
//[2]QGLColormap ( const QGLColormap & map )

HB_FUNC_STATIC( QGLCOLORMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLCOLORMAP_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQGLCOLORMAP(1) )
  {
    HB_FUNC_EXEC( QGLCOLORMAP_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLCOLORMAP_DELETE )
{
  QGLColormap * obj = (QGLColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QColor entryColor ( int idx ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_ENTRYCOLOR )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->entryColor ( (int) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
QRgb entryRgb ( int idx ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_ENTRYRGB )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->entryRgb ( (int) hb_parni(1) ) );
  }
}


/*
int find ( QRgb color ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_FIND )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->find ( (QRgb) hb_parni(1) ) );
  }
}


/*
int findNearest ( QRgb color ) const
*/
HB_FUNC_STATIC( QGLCOLORMAP_FINDNEAREST )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->findNearest ( (QRgb) hb_parni(1) ) );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QGLCOLORMAP_ISEMPTY )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
void setEntries ( int count, const QRgb * colors, int base = 0 )
*/
HB_FUNC_STATIC( QGLCOLORMAP_SETENTRIES )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRgb * par2 = (QRgb *) _qt5xhb_itemGetPtr(2);
    obj->setEntries ( (int) hb_parni(1), par2, (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEntry ( int idx, QRgb color )
*/
HB_FUNC_STATIC( QGLCOLORMAP_SETENTRY1 )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEntry ( (int) hb_parni(1), (QRgb) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEntry ( int idx, const QColor & color )
*/
HB_FUNC_STATIC( QGLCOLORMAP_SETENTRY2 )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) _qt5xhb_itemGetPtr(2) : QColor(hb_parc(2));
    obj->setEntry ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setEntry ( int idx, QRgb color )
//[2]void setEntry ( int idx, const QColor & color )

HB_FUNC_STATIC( QGLCOLORMAP_SETENTRY )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLCOLORMAP_SETENTRY1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && (ISQCOLOR(2)||ISCHAR(2)) )
  {
    HB_FUNC_EXEC( QGLCOLORMAP_SETENTRY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int size () const
*/
HB_FUNC_STATIC( QGLCOLORMAP_SIZE )
{
  QGLColormap * obj = (QGLColormap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}



HB_FUNC_STATIC( QGLCOLORMAP_NEWFROM )
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

HB_FUNC_STATIC( QGLCOLORMAP_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLCOLORMAP_NEWFROM );
}

HB_FUNC_STATIC( QGLCOLORMAP_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLCOLORMAP_NEWFROM );
}

HB_FUNC_STATIC( QGLCOLORMAP_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLCOLORMAP_SETSELFDESTRUCTION )
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