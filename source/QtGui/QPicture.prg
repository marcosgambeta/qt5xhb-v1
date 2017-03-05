/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QPicture INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QPicture
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD data
   METHOD isNull
   METHOD load1
   METHOD load2
   METHOD load
   METHOD play
   METHOD save1
   METHOD save2
   METHOD save
   METHOD setBoundingRect
   METHOD setData
   METHOD size
   METHOD swap
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPicture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPicture>
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
#include <QPicture>
#endif

/*
QPicture ( int formatVersion = -1 )
*/
HB_FUNC_STATIC( QPICTURE_NEW1 )
{
  int par1 = ISNIL(1)? -1 : hb_parni(1);
  QPicture * o = new QPicture ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPicture *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
QPicture ( const QPicture & pic )
*/
HB_FUNC_STATIC( QPICTURE_NEW2 )
{
  QPicture * par1 = (QPicture *) _qt5xhb_itemGetPtr(1);
  QPicture * o = new QPicture ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPicture *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QPicture ( int formatVersion = -1 )
//[2]QPicture ( const QPicture & pic )

HB_FUNC_STATIC( QPICTURE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPICTURE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPICTURE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPICTURE(1) )
  {
    HB_FUNC_EXEC( QPICTURE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPICTURE_DELETE )
{
  QPicture * obj = (QPicture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRect boundingRect () const
*/
HB_FUNC_STATIC( QPICTURE_BOUNDINGRECT )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
const char * data () const
*/
HB_FUNC_STATIC( QPICTURE_DATA )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->data (  );
    hb_retc( str1 );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QPICTURE_ISNULL )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool load ( const QString & fileName, const char * format = 0 )
*/
HB_FUNC_STATIC( QPICTURE_LOAD1 )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->load ( par1,  (const char *) par2 ) );
  }
}


/*
bool load ( QIODevice * dev, const char * format = 0 )
*/
HB_FUNC_STATIC( QPICTURE_LOAD2 )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->load ( par1,  (const char *) par2 ) );
  }
}


//[1]bool load ( const QString & fileName, const char * format = 0 )
//[2]bool load ( QIODevice * dev, const char * format = 0 )

HB_FUNC_STATIC( QPICTURE_LOAD )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPICTURE_LOAD1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPICTURE_LOAD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool play ( QPainter * painter )
*/
HB_FUNC_STATIC( QPICTURE_PLAY )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->play ( par1 ) );
  }
}


/*
bool save ( const QString & fileName, const char * format = 0 )
*/
HB_FUNC_STATIC( QPICTURE_SAVE1 )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->save ( par1,  (const char *) par2 ) );
  }
}


/*
bool save ( QIODevice * dev, const char * format = 0 )
*/
HB_FUNC_STATIC( QPICTURE_SAVE2 )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    const char * par2 = ISNIL(2)? 0 : hb_parc(2);
    hb_retl( obj->save ( par1,  (const char *) par2 ) );
  }
}


//[1]bool save ( const QString & fileName, const char * format = 0 )
//[2]bool save ( QIODevice * dev, const char * format = 0 )

HB_FUNC_STATIC( QPICTURE_SAVE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPICTURE_SAVE1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPICTURE_SAVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setBoundingRect ( const QRect & r )
*/
HB_FUNC_STATIC( QPICTURE_SETBOUNDINGRECT )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setBoundingRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setData ( const char * data, uint size )
*/
HB_FUNC_STATIC( QPICTURE_SETDATA )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->setData (  (const char *) par1, (uint) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
uint size () const
*/
HB_FUNC_STATIC( QPICTURE_SIZE )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
void swap ( QPicture & other )
*/
HB_FUNC_STATIC( QPICTURE_SWAP )
{
  QPicture * obj = (QPicture *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPicture * par1 = (QPicture *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
